module Prawn
  module Graphics
    # Use Prawn::Graphics::Transformation#translate and
    # Prawn::Graphics::Transformation#scale to adjust
    # the position and scale of these graphics within
    # your document
    def logo_labtec
      fill_color(0, 100, 80, 0)
      save_graphics_state
      transformation_matrix(1, 0, 0, 1, 5.7134, 24.5166)
      fill do
        move_to(0, 0)
        curve_to([38.207, 0], bounds: [[12.807, 3.58], [28.484, -11.119]])
        curve_to([0, 0], bounds: [[26.895, -6.397], [11.725, 9.084]])
        move_to(0, -7.03)
        curve_to([38.207, -7.03], bounds: [[12.807, -3.45], [28.484, -18.148]])
        curve_to([0, -7.03], bounds: [[26.895, -13.428], [11.725, 2.054]])
        move_to(40.803, -4.164)
        curve_to([19.104, -22.244], bounds: [[40.803, -14.149], [31.088, -22.244]])
        curve_to([-2.596, -4.164], bounds: [[7.119, -22.244], [-2.596, -14.149]])
        curve_to([19.104, 13.916], bounds: [[-2.596, 5.821], [7.119, 13.916]])
        curve_to([40.803, -4.164], bounds: [[31.088, 13.916], [40.803, 5.821]])
      end
      restore_graphics_state
      fill_color(0, 0, 0, 100)
      save_graphics_state
      transformation_matrix(1, 0, 0, 1, 74.4194, 14.2349)
      fill do
        move_to(0, 0)
        line_to(-0.162, -8.136)
        line_to(-21.908, -8.136)
        line_to(-21.908, -6.493)
        curve_to([-19.012, -5.844], bounds: [[-20.409, -6.493], [-19.443, -6.277]])
        curve_to([-18.364, -3.614], bounds: [[-18.58, -5.413], [-18.364, -4.669]])
        line_to(-18.364, 11.714)
        curve_to([-18.58, 13.36], bounds: [[-18.364, 12.421], [-18.436, 12.97]])
        curve_to([-19.578, 14.268], bounds: [[-18.724, 13.75], [-19.057, 14.052]])
        curve_to([-21.908, 14.592], bounds: [[-20.1, 14.484], [-20.876, 14.592]])
        line_to(-21.908, 16.255)
        line_to(-9.625, 16.255)
        line_to(-9.625, 14.592)
        curve_to([-11.936, 14.286], bounds: [[-10.644, 14.592], [-11.415, 14.49]])
        curve_to([-12.961, 13.396], bounds: [[-12.458, 14.082], [-12.8, 13.785]])
        curve_to([-13.205, 11.713], bounds: [[-13.124, 13.005], [-13.205, 12.445]])
        line_to(-13.205, -2.321)
        curve_to([-13.042, -4.696], bounds: [[-13.205, -3.424], [-13.15, -4.216]])
        curve_to([-12.161, -5.785], bounds: [[-12.935, -5.175], [-12.641, -5.539]])
        curve_to([-9.805, -6.153], bounds: [[-11.681, -6.03], [-10.896, -6.153]])
        curve_to([-6.18, -5.838], bounds: [[-8.425, -6.153], [-7.217, -6.048]])
        curve_to([-3.301, -4.165], bounds: [[-5.142, -5.628], [-4.183, -5.071]])
        curve_to([-1.655, 0], bounds: [[-2.42, -3.259], [-1.871, -1.871]])
        line_to(0, 0)
      end
      restore_graphics_state
      save_graphics_state
      transformation_matrix(1, 0, 0, 1, 87.147, 9.7627)
      fill do
        move_to(0, 0)
        line_to(0, 4.459)
        curve_to([-4.341, 2.347], bounds: [[-2.277, 3.74], [-3.724, 3.036]])
        curve_to([-5.266, 0.324], bounds: [[-4.958, 1.657], [-5.266, 0.982]])
        curve_to([-4.763, -1.008], bounds: [[-5.266, -0.228], [-5.099, -0.672]])
        curve_to([-3.343, -1.511], bounds: [[-4.428, -1.343], [-3.954, -1.511]])
        curve_to([-1.6, -1.097], bounds: [[-2.684, -1.511], [-2.103, -1.372]])
        curve_to([0, 0], bounds: [[-1.097, -0.82], [-0.563, -0.456]])
        move_to(8.272, 0.145)
        curve_to([7.714, -2.188], bounds: [[8.272, -0.768], [8.087, -1.545]])
        curve_to([6.209, -3.609], bounds: [[7.342, -2.83], [6.84, -3.304]])
        curve_to([4.073, -4.068], bounds: [[5.578, -3.916], [4.866, -4.068]])
        curve_to([1.55, -3.357], bounds: [[3.063, -4.068], [2.223, -3.832]])
        curve_to([0.342, -1.655], bounds: [[0.877, -2.883], [0.474, -2.315]])
        curve_to([-5.702, -4.068], bounds: [[-1.661, -3.265], [-3.675, -4.068]])
        curve_to([-8.886, -3.125], bounds: [[-6.997, -4.068], [-8.059, -3.754]])
        curve_to([-10.127, -0.636], bounds: [[-9.713, -2.496], [-10.127, -1.666]])
        curve_to([-9.462, 1.674], bounds: [[-10.127, 0.215], [-9.905, 0.984]])
        curve_to([-7.51, 3.517], bounds: [[-9.018, 2.362], [-8.368, 2.977]])
        curve_to([-4.443, 4.946], bounds: [[-6.653, 4.056], [-5.63, 4.532]])
        curve_to([0, 6.249], bounds: [[-3.256, 5.359], [-1.775, 5.794]])
        line_to(0, 7.273)
        curve_to([-0.603, 9.275], bounds: [[0, 8.123], [-0.201, 8.79]])
        curve_to([-2.824, 10.003], bounds: [[-1.004, 9.76], [-1.745, 10.003]])
        curve_to([-4.821, 9.428], bounds: [[-3.748, 10.003], [-4.413, 9.811]])
        curve_to([-5.63, 7.686], bounds: [[-5.229, 9.045], [-5.498, 8.464]])
        curve_to([-6.161, 6.33], bounds: [[-5.726, 7.135], [-5.903, 6.683]])
        curve_to([-7.771, 5.8], bounds: [[-6.418, 5.977], [-6.955, 5.8]])
        curve_to([-9.102, 6.232], bounds: [[-8.274, 5.8], [-8.718, 5.944]])
        curve_to([-9.677, 7.509], bounds: [[-9.485, 6.52], [-9.677, 6.945]])
        curve_to([-7.86, 10.425], bounds: [[-9.677, 8.625], [-9.072, 9.596]])
        curve_to([-2.281, 11.666], bounds: [[-6.648, 11.252], [-4.789, 11.666]])
        curve_to([3.163, 10.335], bounds: [[0.358, 11.666], [2.173, 11.223]])
        curve_to([4.647, 6.776], bounds: [[4.153, 9.449], [4.647, 8.262]])
        line_to(4.647, 1.096)
        curve_to([4.702, -0.485], bounds: [[4.647, 0.377], [4.666, -0.15]])
        curve_to([4.998, -1.25], bounds: [[4.738, -0.821], [4.837, -1.076]])
        curve_to([5.762, -1.511], bounds: [[5.159, -1.424], [5.414, -1.511]])
        curve_to([6.579, -1.024], bounds: [[6.073, -1.511], [6.345, -1.349]])
        curve_to([6.929, 0.145], bounds: [[6.813, -0.701], [6.929, -0.312]])
        line_to(8.272, 0.145)
      end
      restore_graphics_state
      save_graphics_state
      transformation_matrix(1, 0, 0, 1, 110.2236, 13.7271)
      fill do
        move_to(0, 0)
        curve_to([-0.748, 3.987], bounds: [[0, 1.503], [-0.249, 2.832]])
        curve_to([-3.692, 5.719], bounds: [[-1.246, 5.141], [-2.228, 5.719]])
        curve_to([-5.25, 5.403], bounds: [[-4.22, 5.719], [-4.74, 5.613]])
        curve_to([-6.673, 4.546], bounds: [[-5.761, 5.192], [-6.235, 4.906]])
        curve_to([-7.889, 3.283], bounds: [[-7.112, 4.185], [-7.517, 3.765]])
        line_to(-7.889, -4.059)
        curve_to([-5.737, -5.855], bounds: [[-7.169, -4.997], [-6.451, -5.596]])
        curve_to([-3.836, -6.243], bounds: [[-5.022, -6.113], [-4.389, -6.243]])
        curve_to([-1.459, -5.241], bounds: [[-2.828, -6.243], [-2.035, -5.909]])
        curve_to([-0.297, -2.85], bounds: [[-0.882, -4.574], [-0.496, -3.777]])
        curve_to([0, 0], bounds: [[-0.1, -1.924], [0, -0.974]])
        move_to(4.968, -0.145)
        curve_to([4.337, -3.375], bounds: [[4.968, -1.296], [4.757, -2.374]])
        curve_to([2.566, -5.976], bounds: [[3.917, -4.377], [3.328, -5.244]])
        curve_to([-0.042, -7.65], bounds: [[1.806, -6.708], [0.937, -7.266]])
        curve_to([-3.144, -8.225], bounds: [[-1.018, -8.033], [-2.052, -8.225]])
        curve_to([-6.452, -7.482], bounds: [[-4.425, -8.225], [-5.529, -7.978]])
        curve_to([-8.736, -5.577], bounds: [[-7.375, -6.988], [-8.136, -6.352]])
        curve_to([-11.132, -8.225], bounds: [[-9.841, -6.674], [-10.639, -7.557]])
        line_to(-12.537, -8.225)
        line_to(-12.537, 11.704)
        curve_to([-12.779, 13.205], bounds: [[-12.537, 12.387], [-12.618, 12.887]])
        curve_to([-13.589, 13.817], bounds: [[-12.942, 13.523], [-13.211, 13.727]])
        curve_to([-15.343, 13.988], bounds: [[-13.966, 13.907], [-14.551, 13.964]])
        line_to(-15.343, 15.606)
        line_to(-7.889, 17.189)
        line_to(-7.889, 5.575)
        curve_to([-5.758, 7.066], bounds: [[-7.277, 6.146], [-6.567, 6.644]])
        curve_to([-2.584, 7.702], bounds: [[-4.949, 7.49], [-3.891, 7.702]])
        curve_to([0.68, 7.036], bounds: [[-1.362, 7.702], [-0.274, 7.479]])
        curve_to([3.061, 5.236], bounds: [[1.632, 6.592], [2.427, 5.992]])
        curve_to([4.491, 2.717], bounds: [[3.697, 4.48], [4.173, 3.641]])
        curve_to([4.968, -0.145], bounds: [[4.809, 1.793], [4.968, 0.839]])
      end
      restore_graphics_state
      save_graphics_state
      transformation_matrix(1, 0, 0, 1, 129.7549, 9.29)
      fill do
        move_to(0, 0)
        curve_to([-2.267, -2.908], bounds: [[-0.648, -1.353], [-1.403, -2.322]])
        curve_to([-5.308, -3.788], bounds: [[-3.13, -3.495], [-4.145, -3.788]])
        curve_to([-8.442, -2.926], bounds: [[-6.724, -3.788], [-7.769, -3.5]])
        curve_to([-9.685, -0.992], bounds: [[-9.115, -2.35], [-9.529, -1.705]])
        curve_to([-9.919, 1.409], bounds: [[-9.841, -0.279], [-9.919, 0.521]])
        line_to(-9.919, 9.878)
        line_to(-12.635, 9.878)
        line_to(-12.635, 11.542)
        curve_to([-9.665, 12.19], bounds: [[-11.496, 11.542], [-10.504, 11.757]])
        curve_to([-7.676, 13.937], bounds: [[-8.824, 12.622], [-8.162, 13.204]])
        curve_to([-6.748, 16.296], bounds: [[-7.189, 14.669], [-6.88, 15.456]])
        line_to(-5.271, 16.296)
        line_to(-5.271, 11.542)
        line_to(-0.18, 11.542)
        line_to(-0.18, 9.878)
        line_to(-5.271, 9.878)
        line_to(-5.271, 1.295)
        curve_to([-5.064, -0.964], bounds: [[-5.271, 0.252], [-5.202, -0.501]])
        curve_to([-4.048, -1.656], bounds: [[-4.926, -1.425], [-4.588, -1.656]])
        curve_to([-2.626, -0.981], bounds: [[-3.473, -1.656], [-2.999, -1.432]])
        curve_to([-1.547, 0.7], bounds: [[-2.255, -0.532], [-1.895, 0.029]])
        line_to(0, 0)
      end
      restore_graphics_state
      save_graphics_state
      transformation_matrix(1, 0, 0, 1, 143.1206, 15.6719)
      fill do
        move_to(0, 0)
        curve_to([-3.238, 4.094], bounds: [[0, 2.729], [-1.08, 4.094]])
        curve_to([-5.64, 2.962], bounds: [[-4.282, 4.094], [-5.081, 3.716]])
        curve_to([-6.565, 0], bounds: [[-6.196, 2.208], [-6.506, 1.221]])
        line_to(0, 0)
        move_to(4.477, -1.663)
        line_to(-6.591, -1.663)
        curve_to([-6.492, -3.123], bounds: [[-6.579, -1.892], [-6.547, -2.378]])
        curve_to([-5.989, -5.412], bounds: [[-6.439, -3.867], [-6.271, -4.631]])
        curve_to([-4.532, -7.386], bounds: [[-5.708, -6.193], [-5.222, -6.851]])
        curve_to([-1.753, -8.188], bounds: [[-3.842, -7.92], [-2.916, -8.188]])
        curve_to([0.55, -7.701], bounds: [[-1.117, -8.188], [-0.35, -8.025]])
        curve_to([2.889, -5.83], bounds: [[1.449, -7.378], [2.229, -6.754]])
        line_to(4.297, -6.781)
        curve_to([-2.449, -10.17], bounds: [[2.882, -9.041], [0.633, -10.17]])
        curve_to([-6.218, -9.576], bounds: [[-3.829, -10.17], [-5.084, -9.972]])
        curve_to([-9.105, -7.921], bounds: [[-7.351, -9.181], [-8.314, -8.629]])
        curve_to([-10.922, -5.419], bounds: [[-9.897, -7.212], [-10.502, -6.379]])
        curve_to([-11.552, -2.323], bounds: [[-11.342, -4.459], [-11.552, -3.428]])
        curve_to([-10.499, 1.708], bounds: [[-11.552, -0.872], [-11.2, 0.471]])
        curve_to([-7.486, 4.659], bounds: [[-9.797, 2.943], [-8.794, 3.927]])
        curve_to([-3.007, 5.757], bounds: [[-6.18, 5.391], [-4.686, 5.757]])
        curve_to([1.157, 4.694], bounds: [[-1.363, 5.757], [0.025, 5.402]])
        curve_to([3.668, 1.938], bounds: [[2.292, 3.986], [3.127, 3.067]])
        curve_to([4.477, -1.663], bounds: [[4.208, 0.81], [4.477, -0.391]])
        line_to(4.477, -1.663)
      end
      restore_graphics_state
      save_graphics_state
      transformation_matrix(1, 0, 0, 1, 166.0347, 9.7363)
      fill do
        move_to(0, 0)
        curve_to([-6.997, -4.234], bounds: [[-1.451, -2.823], [-3.783, -4.234]])
        curve_to([-11.252, -3.317], bounds: [[-8.496, -4.234], [-9.915, -3.929]])
        curve_to([-14.474, -0.653], bounds: [[-12.59, -2.705], [-13.664, -1.817]])
        curve_to([-15.689, 3.433], bounds: [[-15.284, 0.51], [-15.689, 1.872]])
        curve_to([-15.032, 6.527], bounds: [[-15.689, 4.512], [-15.47, 5.543]])
        curve_to([-13.134, 9.19], bounds: [[-14.594, 7.511], [-13.961, 8.399]])
        curve_to([-10.191, 11.035], bounds: [[-12.305, 9.982], [-11.324, 10.598]])
        curve_to([-6.548, 11.692], bounds: [[-9.058, 11.473], [-7.844, 11.692]])
        curve_to([-2.176, 10.709], bounds: [[-4.894, 11.692], [-3.436, 11.364]])
        curve_to([-0.288, 7.997], bounds: [[-0.917, 10.055], [-0.288, 9.15]])
        curve_to([-0.881, 6.644], bounds: [[-0.288, 7.467], [-0.485, 7.017]])
        curve_to([-2.248, 6.085], bounds: [[-1.276, 6.272], [-1.732, 6.085]])
        curve_to([-3.382, 6.428], bounds: [[-2.739, 6.085], [-3.118, 6.199]])
        curve_to([-3.903, 7.13], bounds: [[-3.646, 6.656], [-3.819, 6.89]])
        curve_to([-4.263, 8.408], bounds: [[-3.987, 7.37], [-4.106, 7.796]])
        curve_to([-5.037, 9.66], bounds: [[-4.419, 8.997], [-4.677, 9.414]])
        curve_to([-6.548, 10.029], bounds: [[-5.396, 9.906], [-5.9, 10.029]])
        curve_to([-9.453, 8.813], bounds: [[-7.64, 10.029], [-8.606, 9.624]])
        curve_to([-10.722, 4.267], bounds: [[-10.298, 8.003], [-10.722, 6.488]])
        curve_to([-10.209, 0.99], bounds: [[-10.722, 3.078], [-10.55, 1.986]])
        curve_to([-8.59, -1.378], bounds: [[-9.866, -0.007], [-9.326, -0.796]])
        curve_to([-5.882, -2.252], bounds: [[-7.852, -1.96], [-6.949, -2.252]])
        curve_to([-3.166, -1.37], bounds: [[-4.694, -2.252], [-3.79, -1.958]])
        curve_to([-1.511, 0.698], bounds: [[-2.543, -0.782], [-1.991, -0.093]])
        line_to(0, 0)
      end
      restore_graphics_state
    end
  end
end
