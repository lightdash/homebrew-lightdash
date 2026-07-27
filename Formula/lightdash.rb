class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3487.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3487.0/lightdash-cli-0.3487.0-macos-arm64.tar.gz"
      sha256 "ed9d8741e341ef12af59c268f63a9ff7e0565064fe3d3b882254b6cec916d75c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3487.0/lightdash-cli-0.3487.0-macos-x64.tar.gz"
      sha256 "b95492b02b90e853b12a24cb9e7acd0b118fa0c1357d5fd803271b95d0392031"
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
