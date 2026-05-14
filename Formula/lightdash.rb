class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2944.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2944.0/lightdash-cli-0.2944.0-macos-arm64.tar.gz"
      sha256 "481cdcacf970390fded96b55e7b94c26a55ab174c03cd9d8020baee71c1a3ef7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2944.0/lightdash-cli-0.2944.0-macos-x64.tar.gz"
      sha256 "3936edb0d4fb49b92e5d6c70e27e98e3def7d08e28431eed15b8a78e7bebdf56"
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
