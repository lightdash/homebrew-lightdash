class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2545.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2545.1/lightdash-cli-0.2545.1-macos-arm64.tar.gz"
      sha256 "7c0b027e0a71f7d4e639c84d8637405e3556d45f552d597aede7841cc038e771"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2545.1/lightdash-cli-0.2545.1-macos-x64.tar.gz"
      sha256 "624d48ad01c946c82bf9f37a5b9fabc7da64a96c54dce2969600a1ea9c0fa5db"
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
