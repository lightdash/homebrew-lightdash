class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3417.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3417.2/lightdash-cli-0.3417.2-macos-arm64.tar.gz"
      sha256 "41311b3ba4ae3b9c84cdc4afbce05a68e280f60ecf4a8a7e6a1f498fcb9180a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3417.2/lightdash-cli-0.3417.2-macos-x64.tar.gz"
      sha256 "9829082bfa64fba1a4299cee93ff0ca84fef289ce3a657796abeaa919f300f5c"
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
