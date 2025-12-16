class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2259.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2259.1/lightdash-cli-0.2259.1-macos-arm64.tar.gz"
      sha256 "290efc7a14e389b05d4346f6e62b408bb4a180ae6ff12c4ae32cf10f2b261892"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2259.1/lightdash-cli-0.2259.1-macos-x64.tar.gz"
      sha256 "a6f64544194e1fd807b1624c66e8f5432d80cfbcf9fa0ce58863f6d5506ad1f1"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
