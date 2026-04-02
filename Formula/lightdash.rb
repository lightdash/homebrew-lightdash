class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2712.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2712.0/lightdash-cli-0.2712.0-macos-arm64.tar.gz"
      sha256 "e5de1c51dab29df7548698f8dd334f22e2ff30afad569ab4ad7067f93bec3e63"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2712.0/lightdash-cli-0.2712.0-macos-x64.tar.gz"
      sha256 "a7859ce66d502a895dbf175c7a4268e54257c9db18052e22e9046166c52add9a"
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
