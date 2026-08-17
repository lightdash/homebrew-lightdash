class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.167.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.167.1/lightdash-cli-1.167.1-macos-arm64.tar.gz"
      sha256 "3d84f434aa020b853ff4a1f9fb1cb941c3e15a66a90bdc739b101ef6e03cde6a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.167.1/lightdash-cli-1.167.1-macos-x64.tar.gz"
      sha256 "27c37781c93485055038f8d74581c235f94fb5f29ba1f5790640959d8bdde094"
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
