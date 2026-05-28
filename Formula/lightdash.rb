class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3037.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3037.0/lightdash-cli-0.3037.0-macos-arm64.tar.gz"
      sha256 "a81f40a8a182de82f361b5a8515146ee94dbf5549ace594e36ec9f49245d80a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3037.0/lightdash-cli-0.3037.0-macos-x64.tar.gz"
      sha256 "6a381655d2dff324ef0df5c6dc00308bb15a43620b0f2ebaaf18c0799bf117d3"
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
