class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.33.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.33.2/lightdash-cli-2.33.2-macos-arm64.tar.gz"
      sha256 "1e6abfe8c633f217df7d58e1bee88c968157da831d39ef99cabee52c23bc7477"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.33.2/lightdash-cli-2.33.2-macos-x64.tar.gz"
      sha256 "5e9d0b1f82bac09eeb9eba246905556fe30a8a047718be4fe06d23df0b176ad0"
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
