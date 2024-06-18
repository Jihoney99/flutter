Map<int, Map<String, double>> stageProbabilities = {
  1: {'success': 1.0, 'maintain': 0.0, 'decrease': 0.0},
  2: {'success': 1.0, 'maintain': 0.0, 'decrease': 0.0},
  3: {'success': 1.0, 'maintain': 0.0, 'decrease': 0.0},
  4: {'success': 1.0, 'maintain': 0.0, 'decrease': 0.0},
  5: {
    'success': 0.98,
    'maintain': 0.02,
    'decrease': 0.0
  }, // 5 스테이지마다 성공 하락 , 유지 상승
  6: {'success': 0.98, 'maintain': 0.02, 'decrease': 0.0},
  7: {'success': 0.98, 'maintain': 0.02, 'decrease': 0.0},
  8: {'success': 0.98, 'maintain': 0.02, 'decrease': 0.0},
  9: {'success': 0.98, 'maintain': 0.02, 'decrease': 0.0},
  10: {
    'success': 0.96,
    'maintain': 0.04,
    'decrease': 0.0
  }, // 5 스테이지마다 성공 하락 , 유지 상승 , 하락 x

  11: {'success': 0.96, 'maintain': 0.035, 'decrease': 0.005}, // 하락 확률 0.5% 추가
  12: {'success': 0.96, 'maintain': 0.035, 'decrease': 0.005},
  13: {'success': 0.96, 'maintain': 0.035, 'decrease': 0.005},
  14: {'success': 0.96, 'maintain': 0.035, 'decrease': 0.005},
  15: {
    'success': 0.94,
    'maintain': 0.055,
    'decrease': 0.005
  }, // 성공 2% 하락, 유지 2% 상승

  16: {'success': 0.94, 'maintain': 0.055, 'decrease': 0.005},
  17: {'success': 0.94, 'maintain': 0.055, 'decrease': 0.005},
  18: {'success': 0.94, 'maintain': 0.055, 'decrease': 0.005},
  19: {'success': 0.94, 'maintain': 0.055, 'decrease': 0.005},
  20: {
    'success': 0.92,
    'maintain': 0.075,
    'decrease': 0.005
  }, // 성공 2% 하락, 유지 2% 상승

  21: {'success': 0.92, 'maintain': 0.07, 'decrease': 0.01}, // 하락 확률 0.5% 추가
  22: {'success': 0.92, 'maintain': 0.07, 'decrease': 0.01},
  23: {'success': 0.92, 'maintain': 0.07, 'decrease': 0.01},
  24: {'success': 0.92, 'maintain': 0.07, 'decrease': 0.01},
  25: {
    'success': 0.90,
    'maintain': 0.09,
    'decrease': 0.01
  }, // 성공 2% 하락, 유지 2% 상승

  26: {'success': 0.90, 'maintain': 0.09, 'decrease': 0.01},
  27: {'success': 0.90, 'maintain': 0.09, 'decrease': 0.01},
  28: {'success': 0.90, 'maintain': 0.09, 'decrease': 0.01},
  29: {'success': 0.90, 'maintain': 0.09, 'decrease': 0.01},
  30: {'success': 0.88, 'maintain': 0.11, 'decrease': 0.01},
  // 성공 2% 하락, 유지 2% 상승
  31: {'success': 0.88, 'maintain': 0.105, 'decrease': 0.015}, // 하락 확률 0.5% 추가
  32: {'success': 0.88, 'maintain': 0.105, 'decrease': 0.015},
  33: {'success': 0.88, 'maintain': 0.105, 'decrease': 0.015},
  34: {'success': 0.88, 'maintain': 0.105, 'decrease': 0.015},
  35: {
    'success': 0.86,
    'maintain': 0.125,
    'decrease': 0.015
  }, // 성공 2% 하락, 유지 2% 상승

  36: {'success': 0.86, 'maintain': 0.125, 'decrease': 0.015},
  37: {'success': 0.86, 'maintain': 0.125, 'decrease': 0.015},
  38: {'success': 0.86, 'maintain': 0.125, 'decrease': 0.015},
  39: {'success': 0.86, 'maintain': 0.125, 'decrease': 0.015},
  40: {
    'success': 0.84,
    'maintain': 0.145,
    'decrease': 0.015
  }, // 성공 2% 하락, 유지 2% 상승

  41: {'success': 0.84, 'maintain': 0.14, 'decrease': 0.02}, // 하락 확률 0.5% 추가
  42: {'success': 0.84, 'maintain': 0.14, 'decrease': 0.02},
  43: {'success': 0.84, 'maintain': 0.14, 'decrease': 0.02},
  44: {'success': 0.84, 'maintain': 0.14, 'decrease': 0.02},
  45: {
    'success': 0.82,
    'maintain': 0.16,
    'decrease': 0.02
  }, // 성공 2% 하락, 유지 2% 상승

  46: {'success': 0.82, 'maintain': 0.16, 'decrease': 0.02},
  47: {'success': 0.82, 'maintain': 0.16, 'decrease': 0.02},
  48: {'success': 0.82, 'maintain': 0.16, 'decrease': 0.02},
  49: {'success': 0.82, 'maintain': 0.16, 'decrease': 0.02},
  50: {
    'success': 0.80,
    'maintain': 0.18,
    'decrease': 0.02
  }, // 성공 2% 하락, 유지 2% 상승
  51: {'success': 0.80, 'maintain': 0.175, 'decrease': 0.025}, // 하락 확률 0.5% 추가
  52: {'success': 0.80, 'maintain': 0.175, 'decrease': 0.025},
  53: {'success': 0.80, 'maintain': 0.175, 'decrease': 0.025},
  54: {'success': 0.80, 'maintain': 0.175, 'decrease': 0.025},
  55: {
    'success': 0.75,
    'maintain': 0.225,
    'decrease': 0.025
  }, // 성공 5% 하락, 유지 5% 상승

  56: {'success': 0.75, 'maintain': 0.225, 'decrease': 0.025},
  57: {'success': 0.75, 'maintain': 0.225, 'decrease': 0.025},
  58: {'success': 0.75, 'maintain': 0.225, 'decrease': 0.025},
  59: {'success': 0.75, 'maintain': 0.225, 'decrease': 0.025},
  60: {
    'success': 0.70,
    'maintain': 0.275,
    'decrease': 0.025
  }, // 성공 5% 하락, 유지 5% 상승

  61: {'success': 0.70, 'maintain': 0.27, 'decrease': 0.03}, // 하락 확률 0.5% 추가
  62: {'success': 0.70, 'maintain': 0.27, 'decrease': 0.03},
  63: {'success': 0.70, 'maintain': 0.27, 'decrease': 0.03},
  64: {'success': 0.70, 'maintain': 0.27, 'decrease': 0.03},
  65: {
    'success': 0.65,
    'maintain': 0.32,
    'decrease': 0.03
  }, // 성공 5% 하락, 유지 5% 상승

  66: {'success': 0.65, 'maintain': 0.32, 'decrease': 0.03},
  67: {'success': 0.65, 'maintain': 0.32, 'decrease': 0.03},
  68: {'success': 0.65, 'maintain': 0.32, 'decrease': 0.03},
  69: {'success': 0.65, 'maintain': 0.32, 'decrease': 0.03},
  70: {
    'success': 0.60,
    'maintain': 0.37,
    'decrease': 0.03
  }, // 성공 5% 하락, 유지 5% 상승

  71: {'success': 0.60, 'maintain': 0.365, 'decrease': 0.035}, // 하락 확률 0.5% 추가
  72: {'success': 0.60, 'maintain': 0.365, 'decrease': 0.035},
  73: {'success': 0.60, 'maintain': 0.365, 'decrease': 0.035},
  74: {'success': 0.60, 'maintain': 0.365, 'decrease': 0.035},
  75: {
    'success': 0.55,
    'maintain': 0.415,
    'decrease': 0.035
  }, // 성공 5% 하락, 유지 5% 상승

  76: {'success': 0.55, 'maintain': 0.415, 'decrease': 0.035},
  77: {'success': 0.55, 'maintain': 0.415, 'decrease': 0.035},
  78: {'success': 0.55, 'maintain': 0.415, 'decrease': 0.035},
  79: {'success': 0.55, 'maintain': 0.415, 'decrease': 0.035},
  80: {
    'success': 0.50,
    'maintain': 0.465,
    'decrease': 0.035
  }, // 성공 5% 하락, 유지 5% 상승
  81: {'success': 0.50, 'maintain': 0.46, 'decrease': 0.04}, // 하락 확률 0.5% 추가
  82: {'success': 0.50, 'maintain': 0.46, 'decrease': 0.04},
  83: {'success': 0.50, 'maintain': 0.46, 'decrease': 0.04},
  84: {'success': 0.50, 'maintain': 0.46, 'decrease': 0.04},
  85: {
    'success': 0.45,
    'maintain': 0.51,
    'decrease': 0.04
  }, // 성공 5% 하락, 유지 5% 상승

  86: {'success': 0.45, 'maintain': 0.505, 'decrease': 0.045}, // 하락 확률 0.5% 추가
  87: {'success': 0.45, 'maintain': 0.505, 'decrease': 0.045},
  88: {'success': 0.45, 'maintain': 0.505, 'decrease': 0.045},
  89: {'success': 0.45, 'maintain': 0.505, 'decrease': 0.045},
  90: {
    'success': 0.40,
    'maintain': 0.555,
    'decrease': 0.045
  }, // 성공 5% 하락, 유지 5% 상승

  91: {'success': 0.40, 'maintain': 0.55, 'decrease': 0.05}, // 하락 확률 0.5% 추가
  92: {'success': 0.40, 'maintain': 0.55, 'decrease': 0.05},
  93: {'success': 0.40, 'maintain': 0.55, 'decrease': 0.05},
  94: {'success': 0.40, 'maintain': 0.55, 'decrease': 0.05},
  95: {
    'success': 0.35,
    'maintain': 0.6,
    'decrease': 0.05
  }, // 성공 5% 하락, 유지 5% 상승

  96: {'success': 0.35, 'maintain': 0.595, 'decrease': 0.055}, // 하락 확률 0.5% 추가
  97: {'success': 0.35, 'maintain': 0.595, 'decrease': 0.055},
  98: {'success': 0.35, 'maintain': 0.595, 'decrease': 0.055},
  99: {'success': 0.35, 'maintain': 0.595, 'decrease': 0.055},
  100: {
    'success': 0.30,
    'maintain': 0.645,
    'decrease': 0.055
  }, // 성공 5% 하락, 유지 5% 상승

  101: {'success': 0.30, 'maintain': 0.64, 'decrease': 0.06}, // 하락 확률 0.5% 추가
  102: {'success': 0.30, 'maintain': 0.635, 'decrease': 0.065}, // 하락 확률 0.5% 추가
  103: {'success': 0.30, 'maintain': 0.635, 'decrease': 0.065},
  104: {'success': 0.30, 'maintain': 0.635, 'decrease': 0.065},
  105: {'success': 0.30, 'maintain': 0.635, 'decrease': 0.065},
  106: {'success': 0.30, 'maintain': 0.635, 'decrease': 0.065},
  107: {
    'success': 0.30,
    'maintain': 0.63,
    'decrease': 0.07
  }, // 하락 확률 0.5% 추가, 7%에 도달
  108: {'success': 0.30, 'maintain': 0.63, 'decrease': 0.07}, // 이후로 하락 확률 유지
  109: {'success': 0.30, 'maintain': 0.63, 'decrease': 0.07},
  110: {'success': 0.30, 'maintain': 0.63, 'decrease': 0.07},
};
