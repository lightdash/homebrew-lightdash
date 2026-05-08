class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.2/lightdash-cli-0.2903.2-macos-arm64.tar.gz"
      sha256 "4ef0f1091f2d93ad4b06e7ed512361cfd5bbbea8bae293f130845464c8f2619d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.2/lightdash-cli-0.2903.2-macos-x64.tar.gz"
      sha256 "494cc792afb06a3e633b69dc4c9d4996f406b1749038f237f990faf4c19cae94"
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
