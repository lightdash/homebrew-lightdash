class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2657.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.4/lightdash-cli-0.2657.4-macos-arm64.tar.gz"
      sha256 "13ac221cdab1da35e58c5727f86a4ca069c634e9eed96882f5ee1123e14d261a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.4/lightdash-cli-0.2657.4-macos-x64.tar.gz"
      sha256 "ed22acc7194422df9136ffb42a0aca1d213e7579ee4223daf5649de2b96e7494"
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
