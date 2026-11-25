class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.409.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.409.0/lightdash-cli-3.409.0-macos-arm64.tar.gz"
      sha256 "2cc00fd837c4ed61407366edac286b6cdc539a2ecbae207799ca0cb8ebf21346"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.409.0/lightdash-cli-3.409.0-macos-x64.tar.gz"
      sha256 "18b255842e2a9cc9c11ebe139da6fb792aac9903674acf60ce40c8a81f07c04d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.409.0/lightdash-cli-3.409.0-linux-x64.tar.gz"
    sha256 "2c89b87b7a70caf9a90c3b2b2b75d2a891ae35c5b2762cca1f6f35fc4435912c"

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
