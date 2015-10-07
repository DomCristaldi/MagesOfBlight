using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace JBirdEngine {

	public interface INode<T> where T : Component {

		List<T> GetConnections();
		float GetG();
		void SetG(float value);
		float GetH();
		void SetH(float value);
		float GetF();
		void ResetGH();
		T GetCameFrom();
		void SetCameFrom(T cameFrom);

	}

	public static class AIHelper {

		public enum HeuristicMode {
			manhattan,
			euclidian,
			hexagonal,
		}

		public static bool WithinRange<T> (T obj, Vector3 position, float range) where T : Component {
			return (Vector3.Distance(obj.transform.position, position) <= range);
		}

		public static List<T> AStar<T> (T start, T end, float maxDist = Mathf.Infinity, HeuristicMode mode = HeuristicMode.euclidian) where T : Component, INode<T> {
			List<T> path = new List<T>();
			List<T> openList = new List<T>();
			List<T> closedList = new List<T>();
			start.SetG(0f);
			start.SetH(GetHeuristic<T>(start, end, mode));
			openList.Add(start);
			while (openList.Count > 0) {
				T currentNode = NodeWithBestF<T>(openList);
				if (currentNode == end) {
					break;
				}
				foreach (T node in currentNode.GetConnections()) {
					if (node == null) {
						continue;
					}
					if (closedList.Contains(node)) {
						continue;
					}
					SetGH(currentNode, node, end, mode);
					if (node.GetF() < maxDist) {
						openList.Add(node);
					}
				}
				openList.Remove(currentNode);
				closedList.Add(currentNode);
			}
			//Get cameFrom list and reverse it
			path.Add(end);
			T nextCameFrom = end.GetCameFrom();
			while (nextCameFrom != null) {
				path.Add(nextCameFrom);
				nextCameFrom = nextCameFrom.GetCameFrom();
			}
			path.Reverse();
			//Reset nodes
			foreach (T node in openList) {
				node.ResetGH();
			}
			foreach (T node in closedList) {
				node.ResetGH();
			}
			return path;
		}

		public static void SetGH<T> (T node, T next, T end, HeuristicMode mode) where T : Component, INode<T> {
			next.SetG(Mathf.Min(node.GetG() + Vector3.Distance(node.transform.position, next.transform.position), next.GetG()));
			next.SetH(GetHeuristic(next, end, mode));
			next.SetCameFrom(node);
		}

		public static T NodeWithBestF<T> (List<T> list) where T : Component, INode<T> {
			float bestF = Mathf.Infinity;
			T bestNode = null;
			foreach (T node in list) {
				if (node.GetF() < bestF) {
					bestF = node.GetF();
					bestNode = node;
				}
			}
			return bestNode;
		}

		public static float GetHeuristic<T> (T start, T end, HeuristicMode mode) where T : Component, INode<T> {
			return GetHeuristic(start.transform.position, end.transform.position, mode);
		}

		public static float GetHeuristic (Vector3 start, Vector3 end, HeuristicMode mode) {
			if (mode == HeuristicMode.euclidian) {
				return (Vector3.Distance(start, end));
			}
			if (mode == HeuristicMode.manhattan) {
				return ((Mathf.Abs(end.x - start.x) + Mathf.Abs(end.y - start.y) + Mathf.Abs(end.z - start.z)));
			}
			if (mode == HeuristicMode.hexagonal) {
				return (Mathf.Abs(Vector3.Dot(end - start, HexGrid.cornerUpRight)) * Vector3.Distance(end, start) +
				        Mathf.Abs(Vector3.Dot(end - start, HexGrid.cornerDownRight)) * Vector3.Distance(end, start) + 
				        Mathf.Abs(Vector3.Dot(end - start, HexGrid.cornerLeft)) * Vector3.Distance(end, start)) / 2f;
			}
			else {
				Debug.LogError("JBirdEngine.AIHelper: Attempting to use unimplemented Heuristic Mode!");
				return 0f;
			}
		}

	}
	
	public static class ListHelper {

		public static List<T> ListFromObjects<T> (params T[] objects) {
			List<T> newList = new List<T>();
			foreach (T obj in objects) {
				newList.Add(obj);
			}
			return newList;
		}

		public static T GetClosestToPosition<T> (List<T> list, Vector3 position, float maxDist = Mathf.Infinity) where T : Component {
			T bestObj = null;
			foreach (T obj in list) {
				float dist = Vector3.Distance(obj.transform.position, position);
				if (dist < maxDist) {
					maxDist = dist;
					bestObj = obj;
				}
			}
			return bestObj;
		}

		public static T GetClosestWithinRange<T> (List<T> list, Vector3 position, float maxDist) where T : Component {
			return GetClosestToPosition(list, position, maxDist);
		}

	}

	public static class HexGrid {

		public enum ConnectionIndex {
			Down = 0,
			LeftDown = 1,
			LeftUp = 2,
			Up = 3,
			RightUp = 4,
			RightDown = 5
		}
		
		public static int ReverseConnectionIndex (ConnectionIndex index) {
			return ReverseConnectionIndex((int)index);
		}
		
		public static int ReverseConnectionIndex (int index) {
			return (index + 3) % 6;
		}

		public class Edge {
			public Vector3 point1, point2;
			public Edge (Vector3 pt1, Vector3 pt2) {
				point1 = pt1;
				point2 = pt2;
			}
			public Edge (Edge e) {
				point1 = e.point1;
				point2 = e.point2;
			}
		}

		private static Vector3 _cornerRight = new Vector3(1f, 0f, 0f) / Mathf.Sin(60f * Mathf.Deg2Rad);
		private static Vector3 _cornerLeft = new Vector3(-1f, 0f, 0f) / Mathf.Sin(60f * Mathf.Deg2Rad);
		private static Vector3 _cornerUpRight = new Vector3(Mathf.Cos(60f * Mathf.Deg2Rad), 0f, Mathf.Sin(60f * Mathf.Deg2Rad)) / Mathf.Sin(60f * Mathf.Deg2Rad);
		private static Vector3 _cornerUpLeft = new Vector3(-Mathf.Cos(60f * Mathf.Deg2Rad), 0f, Mathf.Sin(60f * Mathf.Deg2Rad)) / Mathf.Sin(60f * Mathf.Deg2Rad);
		private static Vector3 _cornerDownRight = new Vector3(Mathf.Cos(60f * Mathf.Deg2Rad), 0f, -Mathf.Sin(60f * Mathf.Deg2Rad)) / Mathf.Sin(60f * Mathf.Deg2Rad);
		private static Vector3 _cornerDownLeft = new Vector3(-Mathf.Cos(60f * Mathf.Deg2Rad), 0f, -Mathf.Sin(60f * Mathf.Deg2Rad)) / Mathf.Sin(60f * Mathf.Deg2Rad);

		public static Vector3 cornerRight {
			get { return _cornerRight; }
		}
		
		public static Vector3 cornerLeft {
			get { return _cornerLeft; }
		}
		
		public static Vector3 cornerUpRight {
			get { return _cornerUpRight; }
		}
		
		public static Vector3 cornerUpLeft {
			get { return _cornerUpLeft; }
		}
		
		public static Vector3 cornerDownRight {
			get { return _cornerDownRight; }
		}
		
		public static Vector3 cornerDownLeft {
			get { return _cornerDownLeft; }
		}

		private static List<Vector3> _corners = ListHelper.ListFromObjects<Vector3>(_cornerDownRight, _cornerDownLeft, _cornerLeft, _cornerUpLeft, _cornerUpRight, _cornerRight);

		public static List<Vector3> corners {
			get { return new List<Vector3>(_corners); }
		}

		private static List<Edge> _edges = ListHelper.ListFromObjects<Edge>(new Edge(_cornerDownRight, _cornerDownLeft), 
		                                                                	new Edge(_cornerDownLeft, _cornerLeft), 
		                                                                  	new Edge(_cornerLeft, _cornerUpLeft), 
		                                                                  	new Edge(_cornerUpLeft, _cornerUpRight), 
		                                                                  	new Edge(_cornerUpRight, _cornerRight), 
		                                                                  	new Edge(_cornerRight, _cornerDownRight));

		public static List<Edge> edges {
			get { return new List<Edge>(_edges); }
		}

		public static Edge GetEdge (ConnectionIndex direction) {
			return new Edge(_edges[(int)direction]);
		}

		public static List<Vector3> GetEdgeAsVectorList (ConnectionIndex direction) {
			List<Vector3> pointList = new List<Vector3>();
			pointList.Add(edges[(int)direction].point1);
			pointList.Add(edges[(int)direction].point2);
			return pointList;
		}

		private static Vector3 _linkUp = new Vector3(0f, 0f, 1f);
		private static Vector3 _linkDown = new Vector3(0f, 0f, -1f);
		private static Vector3 _linkRightUp = new Vector3(Mathf.Cos(30f * Mathf.Deg2Rad), 0f, Mathf.Sin(30f * Mathf.Deg2Rad));
		private static Vector3 _linkRightDown = new Vector3(Mathf.Cos(30f * Mathf.Deg2Rad), 0f, -Mathf.Sin(30f * Mathf.Deg2Rad));
		private static Vector3 _linkLeftUp = new Vector3(-Mathf.Cos(30f * Mathf.Deg2Rad), 0f, Mathf.Sin(30f * Mathf.Deg2Rad));
		private static Vector3 _linkLeftDown = new Vector3(-Mathf.Cos(30f * Mathf.Deg2Rad), 0f, -Mathf.Sin(30f * Mathf.Deg2Rad));

		private static List<Vector3> _linkDirections = ListHelper.ListFromObjects<Vector3>(_linkDown, _linkLeftDown, _linkLeftUp, _linkUp, _linkRightUp, _linkRightDown);

		public static List<Vector3> linkDirections {
			get { return new List<Vector3>(_linkDirections); }
		}

		public static Vector3 GetDirectionVector (ConnectionIndex direction) {
			return _linkDirections[(int)direction];
		}

		public static Vector3 linkUp {
			get { return _linkUp; }
		}

		public static Vector3 linkDown {
			get { return _linkDown; }
		}

		public static Vector3 linkRightUp {
			get { return _linkRightUp; }
		}

		public static Vector3 linkRightDown {
			get { return _linkRightDown; }
		}

		public static Vector3 linkLeftUp {
			get { return _linkLeftUp; }
		}

		public static Vector3 linkLeftDown {
			get { return _linkLeftDown; }
		}

		public static Vector3 SnapToHexDirection (Vector3 original) {
			float originalMagnitude = original.magnitude;
			float bestDotProduct = 0f;
			Vector3 bestVector = Vector3.zero;
			original.Normalize();
			foreach (Vector3 direction in linkDirections) {
				float dotProduct = Vector3.Dot(original, direction);
				if (dotProduct > bestDotProduct) {
					bestDotProduct = dotProduct;
					bestVector = direction;
				}
			}
			return bestVector * originalMagnitude;
		}

	}

}
