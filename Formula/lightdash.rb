class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2994.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2994.0/lightdash-cli-0.2994.0-macos-arm64.tar.gz"
      sha256 "73e01baf7a6f73aec0d6a7dcfb396c57e44af8a018cf5c0223988e3458ac32ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2994.0/lightdash-cli-0.2994.0-macos-x64.tar.gz"
      sha256 "1644b17ca2beea998f1596da90c0dcbc61a8b2246a74d006a42b7ef93f14bc73"
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
