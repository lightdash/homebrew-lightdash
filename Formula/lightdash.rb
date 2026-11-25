class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.395.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.6/lightdash-cli-3.395.6-macos-arm64.tar.gz"
      sha256 "8138836a51398e465cc4a5fade2d3b90d0a92ec4ecadb7e6cc0f69b53ba6155f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.6/lightdash-cli-3.395.6-macos-x64.tar.gz"
      sha256 "9f57258f4e23aa524465bbbd54c50cca6a9d355e16c5d9566463a4f3cb1df7b7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.395.6/lightdash-cli-3.395.6-linux-x64.tar.gz"
    sha256 "2c731c45f32e4123d81f72b3c6fe6606590e559ab595b1cf894ed337b96c3f89"

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
