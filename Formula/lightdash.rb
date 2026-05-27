class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3025.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3025.2/lightdash-cli-0.3025.2-macos-arm64.tar.gz"
      sha256 "94b336d1fbd8b96bc6a0cab63c777868e7a95eb05fd3d04f3cbf11edaa5e59e5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3025.2/lightdash-cli-0.3025.2-macos-x64.tar.gz"
      sha256 "e907af8c4cf934a1e932a74a3fb2473f46a6cef46461f27b01dbb421113ac6e2"
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
