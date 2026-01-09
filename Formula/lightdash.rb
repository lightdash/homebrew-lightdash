class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2320.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2320.4/lightdash-cli-0.2320.4-macos-arm64.tar.gz"
      sha256 "4af6569814fcd17a08ce44535f32a3112915fa8c896d3f169c1e6a4fdfd61a71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2320.4/lightdash-cli-0.2320.4-macos-x64.tar.gz"
      sha256 "5c5fdeb66ccfbfd845d51adb5af9a4ddc3bf3533e5e008d6efc26c0e9a492513"
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
