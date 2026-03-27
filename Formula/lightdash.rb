class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2681.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2681.0/lightdash-cli-0.2681.0-macos-arm64.tar.gz"
      sha256 "6cdacbd4e2671a76e77557d9a82731a35ee069648d85fa69eb07076ce20c48e7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2681.0/lightdash-cli-0.2681.0-macos-x64.tar.gz"
      sha256 "283fe5680e3afca2137a26afb38b178b913fa8b5194d1ebf4283feaae40bf6a0"
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
