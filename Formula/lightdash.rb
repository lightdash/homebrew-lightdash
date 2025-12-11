class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2247.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2247.0/lightdash-cli-0.2247.0-macos-arm64.tar.gz"
      sha256 "de3eaabdd72ae539574dabdfc3255d0fd3eb97f806fe8c69a51fdd8a6e6fe12b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2247.0/lightdash-cli-0.2247.0-macos-x64.tar.gz"
      sha256 "146bbddd28c77a948e1c8a52fa71332b377a8613d68b33839357b4346c989f06"
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
