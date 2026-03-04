class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2565.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2565.1/lightdash-cli-0.2565.1-macos-arm64.tar.gz"
      sha256 "2034fac634b036b1dae034a78d09106ae35b45d35d5ad05d8992cf867c9d07e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2565.1/lightdash-cli-0.2565.1-macos-x64.tar.gz"
      sha256 "866248a3f80b7b1461f655f16443ea737aeeff02ccdeac1aed419baa61b39d51"
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
