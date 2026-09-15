class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.214.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.214.0/lightdash-cli-2.214.0-macos-arm64.tar.gz"
      sha256 "e17584f500648f7136ac4354d57ac7184650a04ac80f5a2a70a930c5804a602a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.214.0/lightdash-cli-2.214.0-macos-x64.tar.gz"
      sha256 "1df5fcb074e1e4b81f8584b967fa7b5e94716c2655a16582504786698c2ce582"
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
