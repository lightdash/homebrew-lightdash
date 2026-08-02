class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.59.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.59.0/lightdash-cli-1.59.0-macos-arm64.tar.gz"
      sha256 "9a5a7531866b236ff98aeb19a7af10c839a6dad2cae25f2ab48a96b3363e5098"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.59.0/lightdash-cli-1.59.0-macos-x64.tar.gz"
      sha256 "50dfde2f9295c4825a6d6cad28d617836edd8460cc3b94d6a5a0bdc4f49dc413"
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
