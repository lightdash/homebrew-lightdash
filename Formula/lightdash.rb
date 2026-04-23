class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2785.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2785.0/lightdash-cli-0.2785.0-macos-arm64.tar.gz"
      sha256 "38b877d20f03078e564efe53e55d9541640fd8c041432c96a0db878bc8beb863"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2785.0/lightdash-cli-0.2785.0-macos-x64.tar.gz"
      sha256 "fe8b98c0f5f60490d5a6ad3be523116b02643ce1a8c983fbd239d47d640f9db3"
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
