class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3131.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3131.0/lightdash-cli-0.3131.0-macos-arm64.tar.gz"
      sha256 "a71b8819f106d52082b02a1a421e161311673d48f7a8755bc13ef0f45599286c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3131.0/lightdash-cli-0.3131.0-macos-x64.tar.gz"
      sha256 "5be0b99d4a419952feb62604516660877599fedfd327184c62fd2f74df08f12a"
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
