class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.125.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.125.0/lightdash-cli-2.125.0-macos-arm64.tar.gz"
      sha256 "b8c1da5451a31ff07a1494b903d4c0475f65cf2a4466afee5f77bba5e823058b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.125.0/lightdash-cli-2.125.0-macos-x64.tar.gz"
      sha256 "b60be5f42694198ae2dec81fcae3cadab4ecaff408a35454c906cded9a6f40a6"
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
