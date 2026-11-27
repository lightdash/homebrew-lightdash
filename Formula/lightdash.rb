class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.421.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.421.0/lightdash-cli-3.421.0-macos-arm64.tar.gz"
      sha256 "97b38ac77c46d0ff697dd63698e0cbcf6739ebab82a19f48a79d9bc3f7854553"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.421.0/lightdash-cli-3.421.0-macos-x64.tar.gz"
      sha256 "2068d37aec18d462d4b384e9668c95aed9cdb70daee3597b26b9a5f80a53b1e3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.421.0/lightdash-cli-3.421.0-linux-x64.tar.gz"
    sha256 "f8d91cc22d61972dc3c0964eb96a7e6005c80375f1e660aec0c341100e09f5e3"

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
