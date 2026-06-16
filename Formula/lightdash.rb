class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3175.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3175.0/lightdash-cli-0.3175.0-macos-arm64.tar.gz"
      sha256 "37d76d64f776486b9bd53c160f89f3d3dff90bfb16a9f9af566862d01d00c72e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3175.0/lightdash-cli-0.3175.0-macos-x64.tar.gz"
      sha256 "4e86a5a1ed99f920cde27e6fe4be358f4611564a6626e638fd6e3e899907678d"
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
