class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2333.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2333.0/lightdash-cli-0.2333.0-macos-arm64.tar.gz"
      sha256 "2ce09bc06f82a3b834b74a74a99866f407c71ecbcad9fc92a9e0fd1761387f0e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2333.0/lightdash-cli-0.2333.0-macos-x64.tar.gz"
      sha256 "7bbd70121dc44434b89a72969e7a8882973736b1e62a77c59e76251ea693ed69"
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
