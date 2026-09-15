class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.222.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.222.1/lightdash-cli-2.222.1-macos-arm64.tar.gz"
      sha256 "04e3c46359b4df417b61d61f895fd4656d2b58a10ea87abf9325b50b6293e946"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.222.1/lightdash-cli-2.222.1-macos-x64.tar.gz"
      sha256 "8a4c8e347cef83fa9d062e42dac21575a5df96efb6252a644b70f932c5e2e0ab"
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
