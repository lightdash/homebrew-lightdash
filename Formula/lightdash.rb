class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2884.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2884.1/lightdash-cli-0.2884.1-macos-arm64.tar.gz"
      sha256 "5f064d2e8d8fe1ae24e58bf1f39515a1b8bf7f57d92db3eed570fdd8e9c249eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2884.1/lightdash-cli-0.2884.1-macos-x64.tar.gz"
      sha256 "23646c44dffc2f3a881cc74097d696912f43a374a62390e3a0ac363049e26380"
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
