class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2734.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2734.0/lightdash-cli-0.2734.0-macos-arm64.tar.gz"
      sha256 "0c8a48ca2bcbb36317884e8b7b8d49745704cbcdd4de9e90e0e94e8cdacfadb5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2734.0/lightdash-cli-0.2734.0-macos-x64.tar.gz"
      sha256 "625ffe031d101bc1e5f0a6c16dc1476caca0a9f58ac39874fc463cd66a02c1f6"
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
