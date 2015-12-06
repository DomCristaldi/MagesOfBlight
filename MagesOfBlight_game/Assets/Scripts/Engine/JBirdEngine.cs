using UnityEngine;
using UnityEngine.UI;
#if UNITY_EDITOR
using UnityEditor;
#endif
using System;
using System.Collections;
using System.Collections.Generic;

namespace JBirdEngine {

	/// <summary>
	/// Contains extension methods for Unity base functionality.
	/// </summary>
	public static class UnityHelper {

		/// <summary>
		/// Calls SetActive on the component's gameObject.
		/// </summary>
		public static void SetActive (this Component component, bool value) {
			component.gameObject.SetActive(value);
		}

	}

    namespace DataTracking {

        /// <summary>
        /// Interface for making a class have trackable data.
        /// GetData function implementation must be public and return the data you want to track with a DataTracker.
        /// Subscribe to a properly-typed DataTracker to have it automatically track the data from something with this interface.
        /// </summary>
        /// <typeparam name="D">The data type of what you want to track.</typeparam>
        public interface ITrackableData<D> {

            /// <summary>
            /// Implementation of this function should return the data you want to track.
            /// </summary>
            /// <returns>Data that will be tracked by a DataTracker.</returns>
            D GetData ();

        }

        /// <summary>
        /// A class that will track data of any object that susbcribes to it.
        /// Subscribed objects must inherit from ITrackableData<D>, where D is the type of the data being tracked.
        /// </summary>
        /// <typeparam name="T">Type of the class that uses the ITrackableData<D> interface.</typeparam>
        /// <typeparam name="D">Type of the data to be tracked.</typeparam>
        [System.Serializable]
        public class DataTracker<T, D> where T : UnityEngine.Object, ITrackableData<D> {

            /// <summary>
            /// Class used by the DataTracker to keep track of the data history from subscribed objects.
            /// </summary>
            /// <typeparam name="T">Type of the class that uses the ITrackableData<D> interface.</typeparam>
            /// <typeparam name="D">Type of the data to be tracked.</typeparam>
            protected class History<T, D> {

                public T trackedItem;
                private List<D> _history;
                public List<D> history {
                    get { return _history; }
                }

                /// <summary>
                /// Initializes a History object to start keeping track of the specified item.
                /// </summary>
                /// <param name="item">The item to track.</param>
                public History (T item) {
                    trackedItem = item;
                    Initialize();
                }

                /// <summary>
                /// Private initializer for History class.
                /// </summary>
                void Initialize () {
                    _history = new List<D>();
                }

            }

            private List<T> _trackedItems;
            /// <summary>
            /// A list of the items subscribed to this DataTracker.
            /// </summary>
            public List<T> trackedItems {
                get { return new List<T>(_trackedItems); }
            }
            /// <summary>
            /// The number of seconds between each time the DataTracker records data from its subscribers.
            /// </summary>
            public float dataTrackingTimestep;
            private float timestep;
            /// <summary>
            /// Max length of the list of recorded data.
            /// </summary>
            public int maxHistoryLength;
            private List<History<T, D>> _historyList;

            /// <summary>
            /// Creates an instance of a DataTracker.
            /// </summary>
            public DataTracker () {
                Initialize();
            }

            /// <summary>
            /// Creates and instance of a DataTracker.
            /// </summary>
            /// <param name="maxHist">Max length of the list of recorded data.</param>
            /// <param name="tStep">The number of seconds between each time the DataTracker records data from its subscribers.</param>
            public DataTracker (int maxHist, float tStep) {
                maxHistoryLength = maxHist;
                dataTrackingTimestep = tStep;
                Initialize();
            }
            
            /// <summary>
            /// Private initialization function.
            /// </summary>
            void Initialize () {
                _trackedItems = new List<T>();
                _historyList = new List<History<T, D>>();
                if (dataTrackingTimestep < 0f) {
                    dataTrackingTimestep = 0f;
                }
                if (maxHistoryLength < 1) {
                    maxHistoryLength = 1;
                }
            }

            /// <summary>
            /// Adds the specified item as a subscriber to this DataTracker.
            /// </summary>
            /// <param name="item">Item to add as a subscriber.</param>
            public void Subscribe (T item) {
                _trackedItems.Add(item);
                _historyList.Add(new History<T, D>(item));
            }

            /// <summary>
            /// DataTracker update function. Make sure to call this from a MonoBehaviour's Update() function or it won't actually do anything.
            /// If this DataTracker has a dataTrackingTimestep of 0, it will record the data whenver the Update function is called. This allows for a lazy update implementation (useful for turn-based).
            /// </summary>
            public void Update () {
                timestep += Time.deltaTime;
                if (timestep >= dataTrackingTimestep) {
                    timestep -= dataTrackingTimestep;
                    FetchData();
                }
            }

            /// <summary>
            /// Internal function to fetch the data from all subscribers.
            /// </summary>
            void FetchData () {
                foreach (History<T, D> historyItem in _historyList) {
                    UpdateHistoryData(historyItem);
                }
            }

            /// <summary>
            /// Internal function to update a History instance.
            /// </summary>
            /// <param name="historyItem">History instance to update.</param>
            void UpdateHistoryData (History<T, D> historyItem) {
                if (historyItem.history.Count >= maxHistoryLength) {
                    while (historyItem.history.Count > maxHistoryLength - 1) {
                        historyItem.history.RemoveAt(0);
                    }
                }
                historyItem.history.Add(historyItem.trackedItem.GetData());
            }

            /// <summary>
            /// Returns the history recorded from the specified item as a list of data.
            /// </summary>
            /// <param name="item">Item to get the history from.</param>
            /// <returns>A list of data history recorded by this DataTracker.</returns>
            public List<D> GetItemDataHistory (T item) {
                List<D> dataList = new List<D>();
                foreach (History<T, D> historyItem in _historyList) {
                    if (historyItem.trackedItem == item) {
                        dataList = historyItem.history;
                        return dataList;
                    }
                }
                Debug.LogErrorFormat("DataTracker<{0}>: Item {1} could not be found!", typeof(T).ToString(), item);
                return dataList;
            }

        }

    }
	
	/// <summary>
	/// More colors; because Unity's base colors just aren't enough.
	/// </summary>
	public static class MoreColors {

		/// <summary>
		/// I'll tell you what, you know me; let's have some fun.
		/// </summary>
		public static class BobRoss {

			/// <summary>
			/// One of the most versatile of the Bob Ross colors.
			/// </summary>
			public static Color alizarinCrimson {
				get { return ColorHelper.ToColor(0xE32636); }
			}

			/// <summary>
			/// Bob’s customary color for signing his paintings.
			/// </summary>
			public static Color brightRed {
                get { return ColorHelper.ToColor(0xAA0114); }
			}

			/// <summary>
			/// An oldie, but a goodie.
			/// </summary>
			public static Color permanentRed {
                get { return ColorHelper.ToColor(0x742C1E); }
			}

			/// <summary>
			/// Sometimes used to indicate the brilliant sunlight in the sky.
			/// </summary>
			public static Color cadmiumYellow {
                get { return ColorHelper.ToColor(0xFFF600); }
			}

			/// <summary>
			/// The lighter of the two Bob Ross brown colors.
			/// </summary>
			public static Color darkSienna {
				get { return ColorHelper.ToColor(0x3C1414); }
			}

			/// <summary>
			/// Occasionally Bob will use Indian Yellow to paint the sun in the sky of his painting.
			/// </summary>
			public static Color indianYellow {
                get { return ColorHelper.ToColor(0xE3A857); }
			}

			/// <summary>
			/// Often used as a base color to block in the basic shapes of trees and bushes.
			/// </summary>
			public static Color midnightBlack {
                get { return ColorHelper.ToColor(0x000316); }
			}

			/// <summary>
			/// A very strong color, most commonly used to paint skies and water.
			/// </summary>
			public static Color phthaloBlue {
                get { return ColorHelper.ToColor(0x000F89); }
			}

			/// <summary>
			/// An almost fluorescent green color.
			/// </summary>
			public static Color phthaloGreen {
                get { return ColorHelper.ToColor(0x123524); }
			}

			/// <summary>
			/// Often found in the skies of Bob’s frigid winter scenes.
			/// </summary>
			public static Color prussianBlue {
                get { return ColorHelper.ToColor(0x003153); }
			}

			/// <summary>
			/// Used primarily for all things foliage.
			/// </summary>
			public static Color sapGreen {
                get { return ColorHelper.ToColor(0x507D2A); }
			}

			/// <summary>
			/// The most consistently used of all the Bob Ross colors.
			/// </summary>
			public static Color titaniumWhite {
                get { return ColorHelper.ToColor(0xFCFFF0); }
			}

			/// <summary>
			/// A "go-to" color for all of your dark basecoat needs.
			/// </summary>
			public static Color vanDykeBrown {
                get { return ColorHelper.ToColor(0x584630); }
			}

			/// <summary>
			/// A beautiful soft hue, excellent for highlighting foliage.
			/// </summary>
			public static Color yellowOchre {
                get { return ColorHelper.ToColor(0xF5C52C); }
			}

			/// <summary>
			/// There are no mistakes, just happy little accidents.
			/// </summary>
			/// <returns>A random landscape paint color.</returns>
			public static Color HappyLittleAccident () {
				int colorIndex = UnityEngine.Random.Range(0, 14);
				switch (colorIndex) {
				case 0:
					return alizarinCrimson;
				case 1:
					return brightRed;
				case 2:
					return permanentRed;
				case 3:
					return cadmiumYellow;
				case 4:
					return darkSienna;
				case 5:
					return indianYellow;
				case 6:
					return midnightBlack;
				case 7:
					return phthaloBlue;
				case 8:
					return phthaloGreen;
				case 9:
					return prussianBlue;
				case 10:
					return sapGreen;
				case 11:
					return titaniumWhite;
				case 12:
					return vanDykeBrown;
				case 13:
					return yellowOchre;
				default:
					return titaniumWhite;
				}
			}

		}

		public static Color purple {
            get { return ColorHelper.ToColor(0x800080); }
		}
		
		public static Color orange {
            get { return ColorHelper.ToColor(0xFF8C00); }
		}

		public static Color chartreuseYellow {
            get { return ColorHelper.ToColor(0xDFFF00); }
		}

		public static Color chartreuseGreen {
            get { return ColorHelper.ToColor(0x7FFF00); }
		}

		public static Color kokiriTunic {
			get { return ColorHelper.ToColor(0x00CC00); }
		}

		public static Color goronTunic {
            get { return ColorHelper.ToColor(0xCC0000); }
		}

		public static Color zoraTunic {
            get { return ColorHelper.ToColor(0x0000CC); }
		}

		public static Color teal {
            get { return ColorHelper.ToColor(0x008080); }
		}

		public static Color indigo {
            get { return ColorHelper.ToColor(0x4B0082); }
		}

		public static Color sage {
            get { return ColorHelper.ToColor(0x9C9F84); }
		}

		public static Color mintIceCream {
            get { return ColorHelper.ToColor(0xBAEBAE); }
		}

		public static Color sarcoline {
            get { return ColorHelper.ToColor(0xFADFAE); }
		}

		public static Color coquelicot {
            get { return ColorHelper.ToColor(0xFF3800); }
		}

		public static Color smaragdine {
            get { return ColorHelper.ToColor(0x50C875); }
		}

		public static Color mikado {
            get { return ColorHelper.ToColor(0xFFC40C); }
		}

		public static Color glaucous {
            get { return ColorHelper.ToColor(0x6082B6); }
		}

		public static Color wenge {
            get { return ColorHelper.ToColor(0x645452); }
		}

		public static Color fulvous {
            get { return ColorHelper.ToColor(0xE48400); }
		}

		public static Color xanadu {
            get { return ColorHelper.ToColor(0x738678); }
		}

		public static Color falu {
            get { return ColorHelper.ToColor(0x7F1917); }
		}

		public static Color eburnean {
			get { return ColorHelper.ToColor(0xFEF6CC); }
		}

		public static Color amaranth {
			get { return ColorHelper.ToColor(0xE52B50); }
		}

	}

	/// <summary>
	/// Helper class to convert other color formats to Unity-recognized colors.
	/// </summary>
	public static class ColorHelper {

		public class ColorHSV {

			public float h;
			public float s;
			public float v;
			public float a;

			public ColorHSV () {
				h = 0;
				s = 0;
				v = 0;
				a = 0;
			}

			public ColorHSV (ColorHSV cHSV) {
				h = cHSV.h;
				s = cHSV.s;
				v = cHSV.v;
				a = cHSV.a;
			}

			public ColorHSV (float hue, float saturation, float value, float alpha) {
				h = hue;
                if (h > 360f) {
                    h -= 360f;
                }
                if (h < 0f) {
                    h += 360f;
                }
                s = saturation;
                if (s > 1f) {
                    s = 1f;
                }
                if (s < 0f) {
                    s = 0f;
                }
                v = value;
                if (v > 1f) {
                    v = 1f;
                }
                if (v < 0f) {
                    v = 0f;
                }
                a = alpha;
                if (a > 1f) {
                    a = 1f;
                }
                if (a < 0f) {
                    a = 0f;
                }
			}

		}

		/// <summary>
		/// Converts a Color to the ColorHSV class.
		/// </summary>
		/// <returns>ColorHSV class instance.</returns>
		/// <param name="color">Color to convert.</param>
		public static ColorHSV ToHSV (this Color color) {
			float hue;
			float sat;
			float val;
			float cMax = Mathf.Max(color.r, color.g, color.b);
			float cMin = Mathf.Min(color.r, color.g, color.b);
			float delta = cMax - cMin;
			//HUE
			if (delta == 0f) {
				hue = 0f;
			}
			else if (cMax == color.r) {
                hue = ((color.g - color.b) % 6) / delta;
            }
            else if (cMax == color.g) {
                hue = ((color.b - color.r) + 2) / delta;
            }
            else {
                hue = ((color.r - color.g) + 4) / delta;
            }
			//Convert to degrees
			hue *= 60f;
			if (hue < 0f) {
				hue += 360f;
			}
			//SATURATION
			if (cMax == 0f) {
				sat = 0f;
			}
			else {
				sat = delta / cMax;
			}
			//VALUE
			val = cMax;
			return new ColorHSV(hue, sat, val, color.a);
		}

		public static Color ToColor (this ColorHSV colorHSV) {
			float c = colorHSV.v * colorHSV.s;
			float x = c * (1f - Mathf.Abs((colorHSV.h / 60f) % 2 - 1));
			float m = colorHSV.v - c;
			float r = 0f;
			float g = 0f;
			float b = 0f;
			if (0f <= colorHSV.h && colorHSV.h < 60f) {
				r = c + m;
				g = x + m;
				b = m;
			}
			else if (60f <= colorHSV.h && colorHSV.h < 120f) {
				r = x + m;
				g = c + m;
				b = m;
			}
			else if (120f <= colorHSV.h && colorHSV.h < 180f) {
				r = m;
				g = c + m;
				b = x + m;
			}
			else if (180f <= colorHSV.h && colorHSV.h < 240f) {
				r = m;
				g = x + m;
				b = c + m;
			}
			else if (240f <= colorHSV.h && colorHSV.h < 300f) {
				r = x + m;
				g = m;
				b = c + m;
			}
			else {
				r = c + m;
				g = m;
				b = x + m;
			}
			return new Color(r, g, b, colorHSV.a);
		}

		public static Color ToColor (this int HexValue) {
			byte r = (byte)((HexValue >> 16) & 0xFF);
			byte g = (byte)((HexValue >> 8) & 0xFF);
			byte b = (byte)((HexValue) & 0xFF);
			return ToColor(new Color32(r, g, b, 255));
		}

		public static Color ToColor (this Color32 color32) {
			return (Color)color32;
		}

		/// <summary>
		/// Create a Color using red, green, and blue values from 0 to 255.
		/// </summary>
		/// <param name="red">Red (0 to 255).</param>
		/// <param name="green">Green (0 to 255).</param>
		/// <param name="blue">Blue (0 to 255).</param>
		public static Color From255to1 (int red, int green, int blue) {
			return new Color((float)red/255f, (float)green/255f, (float)blue/255f);
		}

		/// <summary>
		/// A container class for holding a color and an amount (for mixing).
		/// </summary>
		public class ColorAmount {

			public Color color;
			public float amount;

			/// <summary>
			/// Initializes a new instance of the ColorAmount class.
			/// </summary>
			/// <param name="c">Color.</param>
			/// <param name="a">Amount (should be between 0.0f and 1.0f).</param>
			public ColorAmount(Color c, float a) {
				color = c;
				amount = a;
			}

			public ColorAmount (ColorAmount cA) {
				color = cA.color;
				amount = cA.amount;
			}

		}

		/// <summary>
		/// A container class for holding a color (in HSV) and an amount (for mixing).
		/// </summary>
		public class ColorHSVAmount {
			
			public ColorHSV colorHSV;
			public float amount;
			
			/// <summary>
			/// Initializes a new instance of the ColorHSVAmount class.
			/// </summary>
			/// <param name="c">Color (in HSV).</param>
			/// <param name="a">Amount (should be between 0.0f and 1.0f).</param>
			public ColorHSVAmount (ColorHSV c, float a) {
				colorHSV = c;
				amount = a;
			}

			public ColorHSVAmount (ColorHSVAmount cHSVA) {
				colorHSV = cHSVA.colorHSV;
				amount = cHSVA.amount;
			}
			
		}

		/// <summary>
		/// Mixes the specified colors in their respective quantities using RGB.
		/// </summary>
		/// <returns>The result of mixing the colors.</returns>
		/// <param name="colors">Colors to mix.</param>
		public static Color MixColors (params ColorAmount[] colors) {
			float redBalance = 0f;
			float greenBalance = 0f;
			float blueBalance = 0f;
			float alpha = 0f;
			foreach (ColorAmount colorAmount in colors) {
				redBalance += colorAmount.color.r * colorAmount.amount;
				greenBalance += colorAmount.color.g * colorAmount.amount;
				blueBalance += colorAmount.color.b * colorAmount.amount;
				alpha += colorAmount.color.a * colorAmount.amount;
			}
			return new Color (redBalance, greenBalance, blueBalance, alpha);
		}

		/// <summary>
		/// Mixes the specified colors in equal quantities using RGB.
		/// </summary>
		/// <returns>The result of mixing the colors.</returns>
		/// <param name="colors">Colors to mix.</param>
		public static Color MixColors (params Color[] colors) {
			ColorAmount[] colorAmounts = new ColorAmount[colors.Length];
			for (int i = 0; i < colors.Length; i++) {
				colorAmounts[i] = new ColorAmount(colors[i], 1f / (float)colors.Length);
			}
			return MixColors(colorAmounts);
		}

		/// <summary>
		/// Mixes the specified HSV colors in their respective quantities using HSV.
		/// </summary>
		/// <returns>The result of mixing the colors.</returns>
		/// <param name="colors">Colors to mix.</param>
		public static Color MixColorsHSV (params ColorHSVAmount[] colorsHSV) {
			float hue = 0f;
			float saturation = 0f;
			float value = 0f;
			float alpha = 0f;
			foreach (ColorHSVAmount colorHSVAmount in colorsHSV) {
				hue += colorHSVAmount.colorHSV.h * colorHSVAmount.amount;
				saturation += colorHSVAmount.colorHSV.s * colorHSVAmount.amount;
				value += colorHSVAmount.colorHSV.v * colorHSVAmount.amount;
				alpha += colorHSVAmount.colorHSV.a * colorHSVAmount.amount;
			}
			return new ColorHSV (hue, saturation, value, alpha).ToColor();
		}

		/// <summary>
		/// Mixes the specified colors in their respective quantities using HSV.
		/// </summary>
		/// <returns>The result of mixing the colors.</returns>
		/// <param name="colors">Colors to mix.</param>
		public static Color MixColorsHSV (params ColorAmount[] colors) {
			ColorHSVAmount[] colorHSVAmounts = new ColorHSVAmount[colors.Length];
			for (int i = 0; i < colors.Length; i++) {
				colorHSVAmounts[i] = new ColorHSVAmount(colors[i].color.ToHSV(), colors[i].amount);
			}
			return MixColorsHSV(colorHSVAmounts);
		}

		/// <summary>
		/// Mixes the specified HSV colors in their respective quantities using HSV.
		/// </summary>
		/// <returns>The result of mixing the colors.</returns>
		/// <param name="colors">Colors to mix.</param>
		public static Color MixColorsHSV (params ColorHSV[] colorsHSV) {
			ColorHSVAmount[] colorHSVAmounts = new ColorHSVAmount[colorsHSV.Length];
			for (int i = 0; i < colorsHSV.Length; i++) {
				colorHSVAmounts[i] = new ColorHSVAmount(colorsHSV[i], 1f / (float)colorsHSV.Length);
			}
			return MixColorsHSV(colorHSVAmounts);
		}

		/// <summary>
		/// Mixes the specified colors in their respective quantities using HSV.
		/// </summary>
		/// <returns>The result of mixing the colors.</returns>
		/// <param name="colors">Colors to mix.</param>
		public static Color MixColorsHSV (params Color[] colors) {
			ColorHSVAmount[] colorHSVAmounts = new ColorHSVAmount[colors.Length];
			for (int i = 0; i < colors.Length; i++) {
				colorHSVAmounts[i] = new ColorHSVAmount(colors[i].ToHSV(), 1f / (float)colors.Length);
			}
			return MixColorsHSV(colorHSVAmounts);
		}

		/// <summary>
		/// Shifts the hue by the specified number of degrees.
		/// </summary>
		/// <returns>The HSV color with hue shifted.</returns>
		/// <param name="startColor">Starting HSV color.</param>
		/// <param name="degrees">Degrees to shift the hue.</param>
		public static ColorHSV ShiftHue (this ColorHSV startColor, float degrees) {
			float hue = startColor.h;
			hue += degrees;
			if (hue > 360f) {
				hue -= 360f;
			}
			if (hue < 0f) {
				hue += 360f;
			}
			startColor.h = hue;
			return startColor;
		}

		/// <summary>
		/// Make a gradient between two colors (Returns a list of colors blended from startColor to endColor).
		/// </summary>
		/// <returns>A list of colors blended from startColor to endColor.</returns>
		/// <param name="startColor">Start color.</param>
		/// <param name="endColor">End color.</param>
		/// <param name="blendColors">Number of blended colors in the middle (returned list's length will be this value plus two).</param>
		public static List<Color> MakeGradient (Color startColor, Color endColor, int blendColors) {
			List<Color> gradient = new List<Color>();
			float amountPerBlendStep = 1f / (float)(blendColors + 1);
			float blendAmount = 0f;
			gradient.Add(startColor);
			for (int i = 0; i < blendColors; i++) {
				blendAmount += amountPerBlendStep;
				gradient.Add(MixColors(new ColorAmount(startColor, 1f - blendAmount), new ColorAmount(endColor, blendAmount)));
			}
			gradient.Add(endColor);
			return gradient;
		}

		/// <summary>
		/// Make a gradient between two colors using HSV (Returns a list of colors blended from startColor to endColor).
		/// </summary>
		/// <returns>A list of colors blended from startColor to endColor.</returns>
		/// <param name="startColor">Start color.</param>
		/// <param name="endColor">End color.</param>
		/// <param name="blendColors>Number of blended colors in the middle (returned list's length will be this value plus two).</param>
		public static List<Color> MakeGradientHSV (Color startColor, Color endColor, int blendColors) {
			List<Color> gradient = new List<Color>();
			float startHue = startColor.ToHSV().h;
			float endHue = endColor.ToHSV().h;
			float startSat = startColor.ToHSV().s;
			float endSat = endColor.ToHSV().s;
			float startVal = startColor.ToHSV().v;
			float endVal = endColor.ToHSV().v;
			float degreesPerStep = (endHue - startHue);
			if (degreesPerStep > 180f) {
				degreesPerStep = degreesPerStep - 360f;
			}
			if (degreesPerStep < -180f) {
				degreesPerStep = degreesPerStep + 360f;
			}
			float saturationPerStep = (endSat - startSat);
			float valuePerStep = (endVal - startVal);
			degreesPerStep /= (float)(blendColors + 1);
			saturationPerStep /= (float)(blendColors + 1);
			valuePerStep /= (float)(blendColors + 1);
			gradient.Add(startColor);
			ColorHSV colorHSV = startColor.ToHSV();
			for (int i = 0; i < blendColors; i++) {
				colorHSV.ShiftHue(degreesPerStep);
				colorHSV.s += saturationPerStep;
				colorHSV.v += valuePerStep;
				gradient.Add(colorHSV.ToColor());
			}
			gradient.Add(endColor);
			return gradient;
		}

		/// <summary>
		/// Make a rainbow from the start color, shifting the hue a specified number of degrees each step (Returns a list of Colors).
		/// </summary>
		/// <param name="startColor">Start color.</param>
		/// <param name="degreesPerStep">Degrees to shift the hue per step.</param>
		/// <param name="length">Desired length of the list.</param>
		public static List<Color> Rainbowify (Color startColor, float degreesPerStep, int length) {
			List<Color> rainbow = new List<Color>();
			rainbow.Add(startColor);
			ColorHSV colorHSV = startColor.ToHSV();
			for (int i = 0; i < length - 1; i++) {
				colorHSV.ShiftHue(degreesPerStep);
				rainbow.Add(colorHSV.ToColor());
			}
			return rainbow;
		}

		/// <summary>
		/// Make a rainbow from the start color, shifting the hue until it reaches the end hue. (Returns a list of Colors).
		/// </summary>
		/// <param name="startColor">Start color.</param>
		/// <param name="endColor">Hue to stop shifting at (will only use the hue of this color, not value or saturation).</param>
		/// <param name="length">Desired length of the list.</param>
		public static List<Color> Rainbowify (Color startColor, Color endColor, int length) {
			List<Color> rainbow = new List<Color>();
			float startHue = startColor.ToHSV().h;
			float endHue = endColor.ToHSV().h;
			if (endHue < startHue) {
				endHue += 360f;
			}
			float degreesPerStep = (endHue - startHue);
			degreesPerStep /= (float)length - 1;
			rainbow.Add(startColor);
			ColorHSV colorHSV = startColor.ToHSV();
			for (int i = 0; i < length - 1; i++) {
				colorHSV.ShiftHue(degreesPerStep);
				rainbow.Add(colorHSV.ToColor());
			}
			return rainbow;
		}

	}

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
			mesh.RecalculateNormals();
			mesh.RecalculateBounds();
#if UNITY_EDITOR
            //AssetDatabase.CreateAsset(mesh, "Assets/Meshes/HexMesh.asset");
			//AssetDatabase.SaveAssets();
#endif
            return mesh;
		}

		// Thickness of the hex ring (must be between 0.0f and 1.0f)
		static float outerDistance = 0.98f;
		static float ringThickness = 0.2f;
		public static Mesh hexRingMesh = CreateHexRingMesh();
		
		/// <summary>
		/// Creates the hex mesh and stores it in the assets folder.
		/// </summary>
		private static Mesh CreateHexRingMesh () {
			Mesh mesh = new Mesh();
			mesh.name = "HexRingMesh";
			mesh.vertices = new Vector3[] {
				_cornerDownRight * outerDistance,
				_cornerDownLeft * outerDistance,
				_cornerLeft * outerDistance,
				_cornerUpLeft * outerDistance,
				_cornerUpRight * outerDistance,
				_cornerRight * outerDistance,
				_cornerDownRight * (outerDistance - ringThickness),
				_cornerDownLeft * (outerDistance - ringThickness),
				_cornerLeft * (outerDistance - ringThickness),
				_cornerUpLeft * (outerDistance - ringThickness),
				_cornerUpRight * (outerDistance- ringThickness),
				_cornerRight * (outerDistance - ringThickness)
			};
			Vector2[] uvs = new Vector2[mesh.vertices.Length];
			for (int i = 0; i < mesh.vertices.Length; i++) {
				uvs[i] = new Vector2(mesh.vertices[i].x, mesh.vertices[i].z);
			}
			mesh.uv = uvs;
			mesh.triangles = new int[] {0, 1, 6, 7, 6, 1, 1, 2, 7, 8, 7, 2, 2, 3, 8, 9, 8, 3, 3, 4, 9, 10, 9, 4, 4, 5, 10, 11, 10, 5, 5, 0, 11, 6, 11, 0};
			mesh.RecalculateNormals();
			mesh.RecalculateBounds();
			#if UNITY_EDITOR
			//AssetDatabase.CreateAsset(mesh, "Assets/Meshes/HexRingMesh.asset");
			//AssetDatabase.SaveAssets();
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
