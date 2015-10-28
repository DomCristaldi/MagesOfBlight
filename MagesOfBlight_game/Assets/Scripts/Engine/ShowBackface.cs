using UnityEngine;
using System.Collections;

[AddComponentMenu("Scripts/Engine/ShowBackface")]
public class ShowBackface : MonoBehaviour {
    
    void Awake () {
        
    }
    
	private void Start () {
		Mesh mesh = GetComponent<MeshFilter>().mesh;
		Vector3[] vertices = mesh.vertices;
		Vector2[] uv = mesh.uv;
		Vector3[] normals = mesh.normals;
		int szV = vertices.Length;
		Vector3[] newVerts = new Vector3[szV*2];
		Vector2[] newUv = new Vector2[szV*2];
		Vector3[] newNorms = new Vector3[szV*2];
		for (int i = 0; i < szV; i++){
			// duplicate vertices and uvs:
			newVerts[i] = newVerts[i + szV] = vertices[i];
			newUv[i] = newUv[i + szV] = uv[i];
			// copy the original normals...
			newNorms[i] = normals[i];
			// and revert the new ones
			newNorms[i + szV] = -normals[i];
		}
		int[] triangles = mesh.triangles;
		int szT = triangles.Length;
		int[] newTris = new int[szT*2]; // double the triangles
		for (int i = 0; i < szT; i += 3){
			// copy the original triangle
			newTris[i] = triangles[i];
			newTris[i + 1] = triangles[i + 1];
			newTris[i + 2] = triangles[i + 2];
			// save the new reversed triangle
			int j = i + szT; 
			newTris[j] = triangles[i] + szV;
			newTris[j + 2] = triangles[i + 1] + szV;
			newTris[j + 1] = triangles[i + 2] + szV;
		}
		mesh.vertices = newVerts;
		mesh.uv = newUv;
		mesh.normals = newNorms;
		mesh.triangles = newTris; // assign triangles last!
	}
	
	void Update () {
        
	}
}
