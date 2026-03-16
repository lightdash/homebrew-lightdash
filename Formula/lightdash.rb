class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2621.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2621.1/lightdash-cli-0.2621.1-macos-arm64.tar.gz"
      sha256 "499e5843112dd4fdf5a8d28ed82adc8668a380cf1355fab24f3a44dd1ff9707c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2621.1/lightdash-cli-0.2621.1-macos-x64.tar.gz"
      sha256 "24cc52a3f36fe42e95bf826c586602d2143a59164e9a000c4bc48ee0c86c80c1"
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
