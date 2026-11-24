class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.390.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.390.1/lightdash-cli-3.390.1-macos-arm64.tar.gz"
      sha256 "90c2cf69f04d4c64fdc28aeaafbf52ffcf4cf90d292adb4fd5e773e89f826a5a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.390.1/lightdash-cli-3.390.1-macos-x64.tar.gz"
      sha256 "ec240fdc21eb811c461896136a8c49d0f760b223a4f3bded590afb8c1493c4ae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.390.1/lightdash-cli-3.390.1-linux-x64.tar.gz"
    sha256 "c874e39eacc1a4a955bcc14e0a5a5f5b0f64bb2954841a522e841b0fefbbd29d"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
