class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3077.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3077.0/lightdash-cli-0.3077.0-macos-arm64.tar.gz"
      sha256 "0bb112ef7dbb9313ffa44c8b62436e0e1c703d287b40773ef3f210864da03cc8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3077.0/lightdash-cli-0.3077.0-macos-x64.tar.gz"
      sha256 "20e8e84442ba2963463d3eabe7479125c1949e32093525e155a7d18baf1a47a1"
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
