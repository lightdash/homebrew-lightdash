class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2901.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2901.0/lightdash-cli-0.2901.0-macos-arm64.tar.gz"
      sha256 "41f24a8dc7c2cd6811f67551ecd00273693be4e23a08c17b84c62e008fb36923"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2901.0/lightdash-cli-0.2901.0-macos-x64.tar.gz"
      sha256 "899b82b134482dd9cdc286ba972d38434e8ff8a50e0436203b3d5903bf888c48"
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
