class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2751.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2751.0/lightdash-cli-0.2751.0-macos-arm64.tar.gz"
      sha256 "44b91d3a21c34e1e2dc6c3be408ed805f00d91bc08b267caf8cdff1c0a7fccea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2751.0/lightdash-cli-0.2751.0-macos-x64.tar.gz"
      sha256 "c4b808da6a740d383e68a9129cb7b05d6f1c6a37927a1b1418ff79b8e60e9db4"
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
