class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.199.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.199.1/lightdash-cli-1.199.1-macos-arm64.tar.gz"
      sha256 "6d320d2961d3135f135f57d698867c07a29434bae127d1e6c0dc78e79efd6daa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.199.1/lightdash-cli-1.199.1-macos-x64.tar.gz"
      sha256 "c7c1908d3e3690f3cad3f93307f113b438ce0c260cecccedbdc8335fe0c1d7fb"
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
