class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3245.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3245.1/lightdash-cli-0.3245.1-macos-arm64.tar.gz"
      sha256 "3c147d63522f7e7c8222a21b84b9b6794f5ff7de623c964a9f1941dbe634c171"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3245.1/lightdash-cli-0.3245.1-macos-x64.tar.gz"
      sha256 "06e346a0ee447e52f63e6c3846baaf9d8a5cdf79c8e3f19eb4506277e83af1f2"
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
