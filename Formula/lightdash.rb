class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.71.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.71.0/lightdash-cli-1.71.0-macos-arm64.tar.gz"
      sha256 "101ca991a5c55119654c6f6049b2ab945d7bccabf0f4557d509c54be079b0ae7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.71.0/lightdash-cli-1.71.0-macos-x64.tar.gz"
      sha256 "839f1435e0b3765660201e7a628e65711e6279c8a0b6290cfb6795afd42af72c"
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
