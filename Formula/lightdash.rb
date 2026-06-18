class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3189.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3189.1/lightdash-cli-0.3189.1-macos-arm64.tar.gz"
      sha256 "61050f49c950d9bcff44e33c0e22479424c230f402d98b207da0e806040a2c6f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3189.1/lightdash-cli-0.3189.1-macos-x64.tar.gz"
      sha256 "55b7bf0dd3d7a0fb48d346ee7c21407091be11dc9a482a61d637e95712240204"
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
