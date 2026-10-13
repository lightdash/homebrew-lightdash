class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.575.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.575.1/lightdash-cli-2.575.1-macos-arm64.tar.gz"
      sha256 "c471bc65f5f711069161b3380b02259ca93f88cca4e49f8cda0c8b66d8631fd4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.575.1/lightdash-cli-2.575.1-macos-x64.tar.gz"
      sha256 "2534e171305f68bd7b57d138566b70f1fe3538e56a393465df82323b38166671"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.575.1/lightdash-cli-2.575.1-linux-x64.tar.gz"
    sha256 "8d7b045668268b9d69bac40dcb29a1e80cadda9322d6ba999cd680269e1804a7"

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
