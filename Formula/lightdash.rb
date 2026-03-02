class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2545.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2545.0/lightdash-cli-0.2545.0-macos-arm64.tar.gz"
      sha256 "7b0282bb602572ef6f4113e8142e0a9a5670157e390e2a3154bd7dcf359b2983"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2545.0/lightdash-cli-0.2545.0-macos-x64.tar.gz"
      sha256 "11c7960785e21937b0e6966f946f799ca6c603f295414b9c80baa821dfe9b46b"
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
