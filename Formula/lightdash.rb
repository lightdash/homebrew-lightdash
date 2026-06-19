class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3203.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3203.2/lightdash-cli-0.3203.2-macos-arm64.tar.gz"
      sha256 "036accfaf15c2d5a04a8e6a9120fe1966b000c8c286a5b6d50ec9fd8982b487f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3203.2/lightdash-cli-0.3203.2-macos-x64.tar.gz"
      sha256 "879ecb379b0e68bdb8957ab8e673c35b3d70fa3bbadf53334b1a7c0f543be380"
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
