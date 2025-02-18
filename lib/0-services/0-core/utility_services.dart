class UtilityServices {
// Function to get the first X letters of the description
  static String getFirstXLetters(String fullText, int textSize) {
    if (fullText.isEmpty) return '';

    // If the fullText length is greater than textSize, take first textSize characters and add ellipsis
    if (fullText.length > textSize) {
      return '${fullText.substring(0, textSize)}...';
    } else {
      return fullText; // Return full text if it has X letters or less
    }
  }
}
