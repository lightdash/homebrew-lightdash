class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2899.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2899.0/lightdash-cli-0.2899.0-macos-arm64.tar.gz"
      sha256 "91bdd5f6c2917d6a0d9672fde5a60038a936e579a829adc3a228132ab145d04a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2899.0/lightdash-cli-0.2899.0-macos-x64.tar.gz"
      sha256 "1f7a355c2cfe66cb28e17882b7820b5c09fe4d6fbf1456b50dd3b5e19adce1c5"
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
