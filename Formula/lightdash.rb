class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3471.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3471.1/lightdash-cli-0.3471.1-macos-arm64.tar.gz"
      sha256 "a529b10086a761c4daa2b898662bc6970dfb76f942523917bcccc594e09fb1e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3471.1/lightdash-cli-0.3471.1-macos-x64.tar.gz"
      sha256 "82272758e66e53711eac2d1f000b173abbb97b9a2453faa653babab1e656fed9"
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
