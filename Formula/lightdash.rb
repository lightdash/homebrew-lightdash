class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3239.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3239.0/lightdash-cli-0.3239.0-macos-arm64.tar.gz"
      sha256 "b95723b7666426b7e43a9483a6dffbf1396f87b03dd88665177ee2c0589f68dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3239.0/lightdash-cli-0.3239.0-macos-x64.tar.gz"
      sha256 "93b96a775d5a69e8d9ef3b22e67f932b15003a3e6d3923425361d48559aa5f35"
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
