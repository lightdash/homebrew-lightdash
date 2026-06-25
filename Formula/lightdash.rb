class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3249.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3249.0/lightdash-cli-0.3249.0-macos-arm64.tar.gz"
      sha256 "a042fd44651c04ab755cf84fd4ae34f7f0fd9125c4bea01ad3c8a8775a0af5b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3249.0/lightdash-cli-0.3249.0-macos-x64.tar.gz"
      sha256 "d3abf06ccbc3539d71c8dcacb85f6cc5aea611853b37fe0cd352ac9bc4261716"
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
