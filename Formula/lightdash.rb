class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.150.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.150.1/lightdash-cli-1.150.1-macos-arm64.tar.gz"
      sha256 "490043de27a4877b10f16600809aae8ae167afe5060d17f04ff7eb08d87e12a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.150.1/lightdash-cli-1.150.1-macos-x64.tar.gz"
      sha256 "4111396f4ba463be41fab256ff25c768c2e2837b3b33d6edbc2cec5b054c5d89"
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
