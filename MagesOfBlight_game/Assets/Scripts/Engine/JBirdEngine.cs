using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif
using System;
using System.Collections;
using System.Collections.Generic;

namespace JBirdEngine {

	/*
	/// <summary>
	/// More colors; because Unity's base colors just aren't enough.
	/// </summary>
	public static class MoreColors {

		public static Color purple (this MoreColors colors) {
			return new Color(0.333f, 0.102f, 0.545f, 1.0f);
		}

		public static Color orange (this MoreColors colors) {
			return new Color(1.0f, 0.647f, 0.0f, 1.0f);
		}

		public static Color ToColor(int HexValue) {
			return ToColor(new Color32((byte)((HexValue >> 16) & 0xFF), (byte)((HexValue >> 8) & 0xFF), (byte)((HexValue) & 0xFF), 255));
		}

		public static Color ToColor (Color32 color32) {
			return Color.white;
		}

	}
	*/

	/// <summary>
	/// Contains functions for managing singleton classes.
	/// </summary>
	public static class Singleton {

		/// <summary>
		/// THERE CAN ONLY BE ONE (Makes sure there's only one of this class). For use in Awake();
		/// </summary>
		/// <param name="instance">This instance.</param>
		/// <param name="singleton">Singleton variable.</param>
		/// <typeparam name="T">Must inherit from Component.</typeparam>
		public static void ManageSingleton<T> (T instance, ref T singleton) where T : Component {
			if (singleton == null) {
				singleton = instance;
			}
			else {
				GameObject.Destroy(instance.gameObject);
			}
		}

	}

	/// <summary>
	/// Interface for an A*-capable node.
	/// </summary>
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

	/// <summary>
	/// Contains functions for easily making enums into flags.
	/// </summary>
	public static class EnumHelper {

		/// <summary>
		/// Returns an enum that is a combination of the given flags.
		/// </summary>
		/// <param name="flags">Flags to combine.</param>
		/// <typeparam name="T">Must be an enum.</typeparam>
		public static T CombineFlags<T> (params T[] flags) where T : IConvertible, IFormattable, IComparable {
			if (!typeof(T).IsEnum) {
				throw new ArgumentException ("CombineFlags<T>(): 'T' must be of type 'enum'");
			}
			T newFlags = (T)Enum.ToObject(typeof(T), 0);
			foreach (T flag in flags) {
				newFlags = (T)Enum.ToObject(typeof(T), Convert.ToInt32(newFlags) | Convert.ToInt32(flag));
			}
			return newFlags;
		}

		/// <summary>
		/// Returns the collection of flags that have been toggled.
		/// </summary>
		/// <param name="flag">Base collection of flags.</param>
		/// <param name="toggleList">List of flags to toggle.</param>
		/// <typeparam name="T">Must be an enum.</typeparam>
		public static T ToggleFlags<T> (T flag, params T[] toggleList) where T : IConvertible, IFormattable, IComparable {
			if (!typeof(T).IsEnum) {
				throw new ArgumentException ("ToggleFlags<T>(): 'T' must be of type 'enum'");
			}
			T newFlags = flag;
			foreach (T toggle in toggleList) {
				newFlags = (T)Enum.ToObject(typeof(T), Convert.ToInt32(newFlags) ^ Convert.ToInt32(toggle));
			}
			return newFlags;
		}

		/// <summary>
		/// Returns the base collection of flags minus the flags from the list.
		/// </summary>
		/// <param name="flag">Base collection of flags.</param>
		/// <param name="removeList">List of flags to toggle.</param>
		/// <typeparam name="T">Must be an enum.</typeparam>
		public static T RemoveFlags<T> (T flag, params T[] removeList) where T : IConvertible, IFormattable, IComparable {
			if (!typeof(T).IsEnum) {
				throw new ArgumentException ("RemoveFlags<T>(): 'T' must be of type 'enum'");
			}
			T newFlags = flag;
			foreach (T remove in removeList) {
				newFlags = (T)Enum.ToObject(typeof(T), Convert.ToInt32(newFlags) ^ Convert.ToInt32(remove));
				newFlags = (T)Enum.ToObject(typeof(T), Convert.ToInt32(flag) & Convert.ToInt32(newFlags));
				flag = newFlags;
			}
			return newFlags;
		}

		/// <summary>
		/// Returns whether or not a collection of flags contains another collection of flags.
		/// </summary>
		/// <returns><c>true</c>, if flag contained checkFor, <c>false</c> otherwise.</returns>
		/// <param name="flag">Base collection of flags.</param>
		/// <param name="checkFor">Collection of flags to check for.</param>
		/// <typeparam name="T">Must be an enum.</typeparam>
		public static bool ContainsFlag<T> (T flag, T checkFor) where T : IConvertible, IFormattable, IComparable {
			if (!typeof(T).IsEnum) {
				throw new ArgumentException ("ContainsFlag<T>(): 'T' must be of type 'enum'");
			}
			return (Convert.ToInt32(flag) & Convert.ToInt32(checkFor)) == Convert.ToInt32(checkFor);
		}

	}

	/// <summary>
	/// Contains functions to make programming AI easier.
	/// </summary>
	public static class AIHelper {

		public enum HeuristicMode {
			manhattan,
			euclidian,
			hexagonal,
		}

		/// <summary>
		/// Checks if the object is within a given range of the supplied position.
		/// </summary>
		/// <returns><c>true</c>, if the object was within range of position, <c>false</c> otherwise.</returns>
		/// <param name="obj">Object to check.</param>
		/// <param name="position">Position to check against.</param>
		/// <param name="range">Range to check within (inclusive).</param>
		/// <typeparam name="T">Must inherit from Component.</typeparam>
		public static bool WithinRange<T> (T obj, Vector3 position, float range) where T : Component {
			return (Vector3.Distance(obj.transform.position, position) <= range);
		}

		/// <summary>
		/// Uses A* to find a path over a node graph using the INode interface.
		/// </summary>
		/// <returns>A list of nodes that represents the fastest path from start to end.</returns>
		/// <param name="start">Start node.</param>
		/// <param name="end">End node.</param>
		/// <param name="maxDist">Max distance to search from the start node (defaults to Mathf.Infinity).</param>
		/// <param name="mode">Heuristic mode (defaults to Euclidian).</param>
		/// <typeparam name="T">The node type.</typeparam>
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

		/// <summary>
		/// Used by the A* function.
		/// </summary>
		private static void SetGH<T> (T node, T next, T end, HeuristicMode mode) where T : Component, INode<T> {
			next.SetG(Mathf.Min(node.GetG() + Vector3.Distance(node.transform.position, next.transform.position), next.GetG()));
			next.SetH(GetHeuristic(next, end, mode));
			next.SetCameFrom(node);
		}

		/// <summary>
		/// Used by the A* function.
		/// </summary>
		private static T NodeWithBestF<T> (List<T> list) where T : Component, INode<T> {
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

		/// <summary>
		/// Returns the predicted distance from start to end based on the given heuristic mode.
		/// </summary>
		/// <param name="start">Start node.</param>
		/// <param name="end">End node.</param>
		/// <param name="mode">Heuristic mode.</param>
		/// <typeparam name="T">The node type.</typeparam>
		public static float GetHeuristic<T> (T start, T end, HeuristicMode mode) where T : Component, INode<T> {
			return GetHeuristic(start.transform.position, end.transform.position, mode);
		}

		/// <summary>
		/// Returns the predicted distance from start to end based on the given heuristic mode.
		/// </summary>
		/// <param name="start">Start position.</param>
		/// <param name="end">End position.</param>
		/// <param name="mode">Heuristic mode.</param>
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

	/// <summary>
	/// Contains functions for list management and statistics.
	/// </summary>
	public static class ListHelper {

		/// <summary>
		/// Creates a list out of the parameters.
		/// </summary>
		/// <returns>A new list containing the objects passed as parameters.</returns>
		/// <param name="objects">Objects to put in a new list.</param>
		public static List<T> ListFromObjects<T> (params T[] objects) {
			List<T> newList = new List<T>();
			foreach (T obj in objects) {
				newList.Add(obj);
			}
			return newList;
		}

		/// <summary>
		/// Returns the element of the list which is the closest to a given position (or null if none are within a specified range).
		/// </summary>
		/// <param name="list">List to check.</param>
		/// <param name="position">Position to check against.</param>
		/// <param name="maxDist">Max distance the element can be from the position in question (defaults to Mathf.Infinity).</param>
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

		/// <summary>
		/// Returns the element of the list which is the closest to a given position within a certain range (or null if none are within range).
		/// </summary>
		/// <param name="list">List to check.</param>
		/// <param name="position">Position to check against.</param>
		/// <param name="maxDist">Max distance the element can be from the position in question.</param>
		public static T GetClosestWithinRange<T> (List<T> list, Vector3 position, float maxDist) where T : Component {
			return GetClosestToPosition(list, position, maxDist);
		}

	}

	/// <summary>
	/// Contains functions and properties to assist with implementing a hexagonal grid.
	/// </summary>
	public static class HexGrid {

		public enum ConnectionIndex {
			Down = 0,
			LeftDown = 1,
			LeftUp = 2,
			Up = 3,
			RightUp = 4,
			RightDown = 5
		}

		/// <summary>
		/// Reverses the connection index.
		/// </summary>
		/// <returns>The reversed connection index.</returns>
		/// <param name="index">Index to reverse.</param>
		public static int ReverseConnectionIndex (ConnectionIndex index) {
			return ReverseConnectionIndex((int)index);
		}

		/// <summary>
		/// Reverses the connection index.
		/// </summary>
		/// <returns>The reversed connection index.</returns>
		/// <param name="index">Index to reverse.</param>
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

		/// <summary>
		/// Right corner of a hex tile.
		/// </summary>
		public static Vector3 cornerRight {
			get { return _cornerRight; }
		}

		/// <summary>
		/// Left corner of a hex tile.
		/// </summary>
		public static Vector3 cornerLeft {
			get { return _cornerLeft; }
		}

		/// <summary>
		/// Top-right corner of a hex tile.
		/// </summary>
		public static Vector3 cornerUpRight {
			get { return _cornerUpRight; }
		}

		/// <summary>
		/// Top-left corner of a hex tile.
		/// </summary>
		public static Vector3 cornerUpLeft {
			get { return _cornerUpLeft; }
		}

		/// <summary>
		/// Bottom-right corner of a hex tile.
		/// </summary>
		public static Vector3 cornerDownRight {
			get { return _cornerDownRight; }
		}

		/// <summary>
		/// Bottom-left corner of a hex tile.
		/// </summary>
		public static Vector3 cornerDownLeft {
			get { return _cornerDownLeft; }
		}

		private static List<Vector3> _corners = ListHelper.ListFromObjects<Vector3>(_cornerDownRight, _cornerDownLeft, _cornerLeft, _cornerUpLeft, _cornerUpRight, _cornerRight);

		/// <summary>
		/// A list of corners of a hex tile (using the connection index on this list returns the corner that is located in a clockwise direction from the specified connection).
		/// </summary>
		public static List<Vector3> corners {
			get { return new List<Vector3>(_corners); }
		}

		private static List<Edge> _edges = ListHelper.ListFromObjects<Edge>(new Edge(_cornerDownRight, _cornerDownLeft), 
		                                                                	new Edge(_cornerDownLeft, _cornerLeft), 
		                                                                  	new Edge(_cornerLeft, _cornerUpLeft), 
		                                                                  	new Edge(_cornerUpLeft, _cornerUpRight), 
		                                                                  	new Edge(_cornerUpRight, _cornerRight), 
		                                                                  	new Edge(_cornerRight, _cornerDownRight));

		/// <summary>
		/// A list of edges of a hex tile (using the connection index returns the edge perpendicular to the specified connection).
		/// </summary>
		public static List<Edge> edges {
			get { return new List<Edge>(_edges); }
		}

		/// <summary>
		/// Returns the edge perpendicular to the specified connection.
		/// </summary>
		public static Edge GetEdge (ConnectionIndex direction) {
			return new Edge(_edges[(int)direction]);
		}

		/// <summary>
		/// Returns the edge perpendicular to the specified connection as a list of two vectors (the positions of the two corners connection by that edge).
		/// </summary>
		public static List<Vector3> GetEdgeAsVectorList (ConnectionIndex direction) {
			List<Vector3> pointList = new List<Vector3>();
			pointList.Add(edges[(int)direction].point1);
			pointList.Add(edges[(int)direction].point2);
			return pointList;
		}

		public static Mesh hexMesh = CreateHexMesh();

		/// <summary>
		/// Creates the hex mesh and stores it in the assets folder.
		/// </summary>
		private static Mesh CreateHexMesh () {
			Mesh mesh = new Mesh();
			mesh.name = "HexMesh";
			Vector3 offset = new Vector3(0f, 0.1f, 0f);
			mesh.vertices = new Vector3[] {
				Vector3.zero,
				_cornerDownRight,
				_cornerDownLeft,
				_cornerLeft,
				_cornerUpLeft,
				_cornerUpRight,
				_cornerRight
			};
			Vector2[] uvs = new Vector2[mesh.vertices.Length];
			for (int i = 0; i < mesh.vertices.Length; i++) {
				uvs[i] = new Vector2(mesh.vertices[i].x, mesh.vertices[i].z);
			}
			mesh.uv = uvs;
			mesh.triangles = new int[] {0, 1, 2, 0, 2, 3, 0, 3, 4, 0, 4, 5, 0, 5, 6, 0, 6, 1};
			mesh.normals = new Vector3[] {
				Vector3.up,
				Vector3.up,
				Vector3.up,
				Vector3.up,
				Vector3.up,
				Vector3.up,
				Vector3.up
			};
			mesh.RecalculateBounds();
#if UNITY_EDITOR
            AssetDatabase.CreateAsset(mesh, "Assets/Meshes/HexMesh.asset");
			AssetDatabase.SaveAssets();
#endif
            return mesh;
		}

		private static Vector3 _linkUp = new Vector3(0f, 0f, 1f);
		private static Vector3 _linkDown = new Vector3(0f, 0f, -1f);
		private static Vector3 _linkRightUp = new Vector3(Mathf.Cos(30f * Mathf.Deg2Rad), 0f, Mathf.Sin(30f * Mathf.Deg2Rad));
		private static Vector3 _linkRightDown = new Vector3(Mathf.Cos(30f * Mathf.Deg2Rad), 0f, -Mathf.Sin(30f * Mathf.Deg2Rad));
		private static Vector3 _linkLeftUp = new Vector3(-Mathf.Cos(30f * Mathf.Deg2Rad), 0f, Mathf.Sin(30f * Mathf.Deg2Rad));
		private static Vector3 _linkLeftDown = new Vector3(-Mathf.Cos(30f * Mathf.Deg2Rad), 0f, -Mathf.Sin(30f * Mathf.Deg2Rad));

		private static List<Vector3> _linkDirections = ListHelper.ListFromObjects<Vector3>(_linkDown, _linkLeftDown, _linkLeftUp, _linkUp, _linkRightUp, _linkRightDown);

		/// <summary>
		/// Returns the list of connection directions between hex tiles.
		/// </summary>
		public static List<Vector3> linkDirections {
			get { return new List<Vector3>(_linkDirections); }
		}

		/// <summary>
		/// Returns the vector from the center of the hex tile to the edge shared by the hex tile in the specified direction.
		/// </summary>
		public static Vector3 GetDirectionVector (ConnectionIndex direction) {
			return _linkDirections[(int)direction];
		}

		/// <summary>
		/// Vector from center of the hex tile to the top edge.
		/// </summary>
		public static Vector3 linkUp {
			get { return _linkUp; }
		}

		/// <summary>
		/// Vector from center of the hex tile to the bottom edge.
		/// </summary>
		public static Vector3 linkDown {
			get { return _linkDown; }
		}

		/// <summary>
		/// Vector from center of the hex tile to the top-right edge.
		/// </summary>
		public static Vector3 linkRightUp {
			get { return _linkRightUp; }
		}

		/// <summary>
		/// Vector from center of the hex tile to the bottom-right edge.
		/// </summary>
		public static Vector3 linkRightDown {
			get { return _linkRightDown; }
		}

		/// <summary>
		/// Vector from center of the hex tile to the top-left edge.
		/// </summary>
		public static Vector3 linkLeftUp {
			get { return _linkLeftUp; }
		}

		/// <summary>
		/// Vector from center of the hex tile to the bottom-left edge.
		/// </summary>
		public static Vector3 linkLeftDown {
			get { return _linkLeftDown; }
		}

		/// <summary>
		/// Returns a vector with the same magnitude as the original vector, but snapped to the closest hex tile link direction.
		/// </summary>
		/// <param name="original">Original vector.</param>
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
