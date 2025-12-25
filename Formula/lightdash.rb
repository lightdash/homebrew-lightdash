class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2278.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.6/lightdash-cli-0.2278.6-macos-arm64.tar.gz"
      sha256 "86a9cb81dfcf580f7d5eae3b742ee775e1a9a89f39dee3ec67e46b2dca3c2bf5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.6/lightdash-cli-0.2278.6-macos-x64.tar.gz"
      sha256 "5c485e5daaf8e9b2888e07fc81435aa18c7b561ceeccbf3fb0e11b10faa7153c"
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
