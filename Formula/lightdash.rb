class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.157.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.5/lightdash-cli-1.157.5-macos-arm64.tar.gz"
      sha256 "e9a7880c03894ef24b73953a0c7d400cde84585c04a5bd14400d78c46a5eb594"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.157.5/lightdash-cli-1.157.5-macos-x64.tar.gz"
      sha256 "fd81ec55231369ca59b0a5b151826d49a1b4b17c17e22a4720cec018e86dd43c"
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
