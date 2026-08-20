class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.228.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.228.3/lightdash-cli-1.228.3-macos-arm64.tar.gz"
      sha256 "2d544339ad64821e63be9bc469111ee34bddc0c3cd530900f153f177ccb58492"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.228.3/lightdash-cli-1.228.3-macos-x64.tar.gz"
      sha256 "9e459e62af51d4d3f44f058e552cf72340e25c537daae26c32fafcb8a9233e69"
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
