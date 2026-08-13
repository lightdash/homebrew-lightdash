class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.151.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.151.0/lightdash-cli-1.151.0-macos-arm64.tar.gz"
      sha256 "68c26e0822eecf12d16277e995030770453179cead151d4e0499ce1a9a1deffa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.151.0/lightdash-cli-1.151.0-macos-x64.tar.gz"
      sha256 "e84e663bd1238a19c2eec54b138d50e6ae28a8f5f510f501f2847d5fbf25e3fc"
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
