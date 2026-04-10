class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2746.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2746.3/lightdash-cli-0.2746.3-macos-arm64.tar.gz"
      sha256 "102818f561f92932fbae10c1433ff5570a0265bffa663ed228f752bd3079701d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2746.3/lightdash-cli-0.2746.3-macos-x64.tar.gz"
      sha256 "36bc80f2e30d414f406698dfe89fafcf93d96cc598ac9db8e276222118df261f"
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
