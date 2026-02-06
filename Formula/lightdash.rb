class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2436.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2436.1/lightdash-cli-0.2436.1-macos-arm64.tar.gz"
      sha256 "b1a22cb9d9877f0bf44676354f5ed81731c17c8a487e4ede6284aab37bc7d2d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2436.1/lightdash-cli-0.2436.1-macos-x64.tar.gz"
      sha256 "4c7a24ec53473d1899ed20ba3d7e747220a7a5b1b12cec2e5eb38738a0ea5a3b"
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
