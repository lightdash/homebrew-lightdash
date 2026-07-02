class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3300.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3300.1/lightdash-cli-0.3300.1-macos-arm64.tar.gz"
      sha256 "594b8a6e21f28e569eb5b909d2c39d2bb7bd7b7cb3a876a6ee9f20de81c54a72"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3300.1/lightdash-cli-0.3300.1-macos-x64.tar.gz"
      sha256 "2532a2e47c717eb17aead2046a84ca28ae454149c32750ac373d2ef12b9f82ad"
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
