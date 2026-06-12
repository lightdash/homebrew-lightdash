class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3152.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3152.1/lightdash-cli-0.3152.1-macos-arm64.tar.gz"
      sha256 "b4c933a846fa611de31fa43a9858b72fb5ae4833f57d81b124f9a0c9878b40ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3152.1/lightdash-cli-0.3152.1-macos-x64.tar.gz"
      sha256 "fc96844b64fdbc43c857559e0e72c6c071d09ed3283e716fec3bede6448d7e74"
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
